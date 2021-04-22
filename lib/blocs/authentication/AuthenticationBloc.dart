import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebaseAuth;

import 'package:app/services/navigation.dart';
import 'package:app/blocs/app/AppBloc.dart';
import 'package:app/blocs/authentication/Bloc.dart';
import 'package:app/repositories/AuthenticationRepository.dart';
import 'package:app/repositories/UserGrpcRepository.dart';
import 'package:app/api/v1/user.pbgrpc.dart' as userGrpc;
import 'package:app/models/User.dart';
import 'package:app/providers/GRPC.dart';
import 'package:app/repositories/StorageRepository.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AppBloc appBloc;
  final AuthenticationRepository authenticationRepository;
  final UserGrpcRepository userGrpcRepository;
  final StorageRepository storageRepository;
  final firebaseAuth.FirebaseAuth _auth = firebaseAuth.FirebaseAuth.instance;

  StreamSubscription subscription;
  String _verificationId;
  String name;
  String phone;
  String password;
  bool forgotPassword;

  final NavigationServiceSingleton _navigationService =
      NavigationServiceSingleton();

  AuthenticationBloc({
    @required this.appBloc,
    @required this.authenticationRepository,
    @required this.userGrpcRepository,
    @required this.storageRepository,
  })  : assert(appBloc != null, authenticationRepository != null),
        super(Uninitialized());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppLaunched) {
      yield* mapAppLaunchedToState();
    } else if (event is AuthenticationLogInEvent) {
      yield* mapLoggedInToState(event.login, event.password);
    } else if (event is AuthenticationFacebookSignInEvent) {
      yield* mapFacebookSignInToState(event.facebookSignInResult);
    } else if (event is AuthenticationAppleSignInEvent) {
      yield* mapAppleSignInToState();
    } else if (event is AuthenticationLoadingEvent) {
      yield AuthenticationLoading();
    } else if (event is AuthenticationRegisterEvent) {
      yield* mapRegisterToState(
        event.phone,
        event.name,
        event.password,
      );
    } else if (event is AuthenticationForgotPasswordEvent) {
      yield* mapForgotPasswordToState(event.phone);
    } else if (event is AuthenticationCodeSent) {
      yield PhoneVirifying(phone: event.phone, id: event.id);
    } else if (event is AuthenticationConfirmPhoneCode) {
      yield* mapConfirmCodeToState(event.phone, event.id, event.code);
    } else if (event is AuthenticationComplete) {
      yield* mapAuthenticationCompleteToState();
    } else if (event is VerificationCodeError) {
      yield VerificationCodeErrorState(
          code: event.code, message: event.message);
    } else if (event is AuthenticationChangePasswordEvent) {
      yield* mapAuthenticationChangePasswordToState(event.password);
    } else if (event is AuthenticationLogOutEvent) {
      yield* mapAuthenticationLogOutToState();
    } else if (event is AuthenticationClearErrorEvent) {
      yield UnAuthenticated();
    }
  }

  Stream<AuthenticationState> mapAppLaunchedToState() async* {
    try {
      final user = await storageRepository.getUser();
      if (user != null) {
        GrpcClientSingleton.token = user.token;
      }
      userGrpc.UserResponse response = await userGrpcRepository.me();
      this.name = response.user.name;
      this.phone = response.user.phone;
      storageRepository.saveUser(User(response.user.name, response.user.phone,
          response.user.firebaseId, response.token));
      yield Authenticated();
      _navigationService.resetTo(AppRouter.Search);
    } catch (err) {
      print(err);
            _navigationService.resetTo(AppRouter.Search);
      //_navigationService.resetTo(AppRouter.First);
    }
  }

  Stream<AuthenticationState> mapLoggedInToState(
      String login, String password) async* {
    try {
      yield AuthenticationLoading();
      userGrpc.UserResponse response =
          await userGrpcRepository.auth(login, password);
      this.name = response.user.name;
      this.phone = response.user.phone;
      storageRepository.saveUser(User(response.user.name, response.user.phone,
          response.user.firebaseId, response.token));
      yield Authenticated();
      _navigationService.resetTo(AppRouter.Search);
    } catch (err) {
      print(err);
      yield AuthenticationLoginErrorState(
          code: err.code.toString(), message: err.message);
    }
  }

  Stream<AuthenticationState> mapFacebookSignInToState(
      String facebookSignInResult) async* {
    yield AuthenticationLoading();
    if (facebookSignInResult != null) {
      try {
        final facebookAuthCred =
            firebaseAuth.FacebookAuthProvider.credential(facebookSignInResult);
        final firebaseAuth.User user =
            (await _auth.signInWithCredential(facebookAuthCred)).user;
        final token = await user.getIdToken();
        userGrpc.UserResponse response = await userGrpcRepository
            .facebookSignIn(user.displayName, user.email, user.uid, token);
        this.name = response.user.name;
        this.phone = response.user.phone;
        storageRepository.saveUser(User(response.user.name, response.user.phone,
            response.user.firebaseId, response.token));
        yield Authenticated();
        _navigationService.resetTo(AppRouter.Search);
      } catch (err) {
        print(err);
        yield AuthenticationLoginErrorState(
            code: err.code.toString(), message: err.message);
      }
    } else {
      yield AuthenticationLoginErrorState(
          code: "facebook_auth_error", message: "facebook_auth_error");
    }
  }

  Stream<AuthenticationState> mapAppleSignInToState() async* {
    yield AuthenticationLoading();
    try {
      final firebaseAuth.User user =
          await authenticationRepository.signInWithApple();
      if (user != null) {
        final token = await user.getIdToken();
        userGrpc.UserResponse response =
            await userGrpcRepository.facebookSignIn(
                user.displayName ?? "", user.email, user.uid, token);
        this.name = response.user.name;
        this.phone = response.user.phone;
        storageRepository.saveUser(User(response.user.name, response.user.phone,
            response.user.firebaseId, response.token));
        yield Authenticated();
        _navigationService.resetTo(AppRouter.Search);
      } else {
        AuthenticationLoginErrorState(
            code: "apple_failed", message: "Apple SignUp failed");
      }
    } catch (err) {
      print(err);
      yield Authenticated();
    }
  }

  Stream<AuthenticationState> mapAuthenticationChangePasswordToState(
      String password) async* {
    yield AuthenticationLoading();
    try {
      userGrpc.UserResponse response =
          await userGrpcRepository.changePassword(password);
      this.name = response.user.name;
      this.phone = response.user.phone;
      storageRepository.saveUser(User(response.user.name, response.user.phone,
          response.user.firebaseId, response.token));
      yield Authenticated();
      _navigationService.navigateTo(AppRouter.Search);
    } catch (err) {
      print(err);
      yield AuthenticationPasswordChangingErrorState(
          code: err.code.toString(), message: err.message);
    }
  }

  Stream<AuthenticationState> mapRegisterToState(
      String phone, String name, String password) async* {
    yield AuthenticationLoading();
    this.name = name;
    this.phone = phone;
    this.password = password;
    this.forgotPassword = false;
    subscription = sendOpt(phone).listen((event) {
      add(event);
    });
  }

  Stream<AuthenticationState> completeRegister() async* {
    try {
      final user = await authenticationRepository.getCurrentFirebaseUser();
      final token = await user.getIdToken();
      userGrpc.UserResponse response = await userGrpcRepository.register(
          this.name, this.phone, this.password, user.uid, token);
      storageRepository.saveUser(User(response.user.name, response.user.phone,
          response.user.firebaseId, response.token));
      yield Authenticated();
      _navigationService.resetTo(AppRouter.Search);
    } catch (err) {
      print(err);
      yield AuthenticationRegisterErrorState(
          code: err.code.toString(), message: err.message);
    }
  }

  Stream<AuthenticationState> mapForgotPasswordToState(String phone) async* {
    yield AuthenticationLoading();
    this.phone = phone;
    this.forgotPassword = true;
    subscription = sendOpt(phone).listen((event) {
      add(event);
    });
  }

  Stream<AuthenticationState> completeForgotPassword() async* {
    try {
      final user = await authenticationRepository.getCurrentFirebaseUser();
      final token = await user.getIdToken();
      userGrpc.UserResponse response =
          await userGrpcRepository.forgotPassword(this.phone, token);
      storageRepository.saveUser(User(response.user.name, response.user.phone,
          response.user.firebaseId, response.token));
      yield AuthenticationPasswordChanging();
    } catch (err) {
      print(err);
      yield AuthenticationForgotErrorState(
          code: err.code.toString(), message: err.message);
    }
  }

  Stream<AuthenticationState> mapConfirmCodeToState(
      String phone, String id, String code) async* {
    yield AuthenticationLoading();
    final res = await authenticationRepository.checkConfirmPhoneCode(code, id);
    if (res["error"] == null) {
      yield Authenticated();
      if (this.forgotPassword) {
        yield* this.completeForgotPassword();
      } else {
        yield* this.completeRegister();
      }
    } else {
      yield VerificationCodeErrorState(
          code: res["error"].code, message: res["error"].message);
    }
    return;
  }

  Stream<AuthenticationState> mapAuthenticationCompleteToState() async* {
    yield Authenticated();
    if (this.forgotPassword) {
      yield* this.completeForgotPassword();
    } else {
      yield* this.completeRegister();
    }
    return;
  }

  Stream<AuthenticationState> mapAuthenticationLogOutToState() async* {
    await authenticationRepository.signOutUser();
    _auth.signOut();
    await storageRepository.removeToken();
    _navigationService.resetTo(AppRouter.First);
    yield UnAuthenticated();
    return;
  }

  Stream<AuthenticationEvent> sendOpt(String phone) async* {
    StreamController<AuthenticationEvent> eventStream = StreamController();

    final firebaseAuth.PhoneVerificationCompleted verificationCompleted =
        (firebaseAuth.AuthCredential phoneAuthCredential) async {
      await _auth.signInWithCredential(phoneAuthCredential);
      authenticationRepository.getCurrentFirebaseUser().catchError((onError) {
        print(onError);
      }).then((user) {
        eventStream.add(AuthenticationComplete());
        eventStream.close();
      });
    };

    final firebaseAuth.PhoneVerificationFailed verificationFailed =
        (firebaseAuth.FirebaseAuthException authException) {
      print(authException.message);
      eventStream.add(VerificationCodeError(
          code: authException.code, message: authException.message));
      eventStream.close();
    };

    final firebaseAuth.PhoneCodeSent codeSent =
        (String verificationId, [int forceResendingToken]) {
      this._verificationId = verificationId;
      eventStream
          .add(AuthenticationCodeSent(phone: phone, id: _verificationId));
    };

    final firebaseAuth.PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationId) {
      this._verificationId = verificationId;
      eventStream.close();
    };

    authenticationRepository.signInWithPhone(
      phone,
      _auth,
      verificationCompleted,
      verificationFailed,
      codeSent,
      codeAutoRetrievalTimeout,
    );
    yield* eventStream.stream;
  }

  void dispose() {
    subscription.cancel();
  }
}
