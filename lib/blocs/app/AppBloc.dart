import 'package:app/blocs/authentication/AuthenticationBloc.dart';
import 'package:app/blocs/content/Bloc.dart';
import 'package:app/repositories/AuthenticationRepository.dart';
import 'package:app/repositories/ContentGrpcRepository.dart';
import 'package:app/repositories/UserGrpcRepository.dart';
import 'package:app/repositories/StorageRepository.dart';

class AppBloc {
  final AuthenticationRepository authenticationRepository =
      AuthenticationRepository();
  final UserGrpcRepository userGrpcRepository = UserGrpcRepository();
  final ContentGrpcRepository contentGrpcRepository = ContentGrpcRepository();
  final StorageRepository storageRepository = StorageRepository();

  ContentBloc _content;
  AuthenticationBloc _authentication;

  AppBloc() {
    _content = ContentBloc(
      appBloc: this,
      contentGrpcRepository: contentGrpcRepository,
    );
    _authentication = AuthenticationBloc(
        appBloc: this,
        authenticationRepository: authenticationRepository,
        userGrpcRepository: userGrpcRepository,
        storageRepository: storageRepository);
  }

  ContentBloc get router => _content;
  AuthenticationBloc get authentication => _authentication;

  void dispose() {
    _content.close();
    _authentication.close();
  }
}
