import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class AuthenticationState extends Equatable {
  @override
  List<Object> get props => [];
}

class Uninitialized extends AuthenticationState {
  @override
  String toString() => 'Uninitialized';
}

class UnAuthenticated extends AuthenticationState {
  @override
  String toString() => 'UnAuthenticated';
}

class AuthenticationLoading extends AuthenticationState {
  @override
  String toString() => 'AuthenticationLoading';
}

class PhoneVirifying extends AuthenticationState {
  final String phone;
  final String id;

  PhoneVirifying({@required this.phone, @required this.id});

  @override
  String toString() => 'PhoneVirifying';
}

class Authenticated extends AuthenticationState {
  Authenticated();
  @override
  String toString() => 'Authenticated';
}

class VerificationCodeErrorState extends AuthenticationState {
  final String code;
  final String message;

  VerificationCodeErrorState({@required this.code, @required this.message});
  @override
  String toString() => 'Authentication verification code error';
}

class AuthenticationLoginErrorState extends AuthenticationState {
  final String code;
  final String message;

  AuthenticationLoginErrorState({@required this.code, @required this.message});
  @override
  String toString() => 'Authentication login error';
}

class AuthenticationRegisterErrorState extends AuthenticationState {
  final String code;
  final String message;

  AuthenticationRegisterErrorState(
      {@required this.code, @required this.message});
  @override
  String toString() => 'Authentication register error';
}

class AuthenticationForgotErrorState extends AuthenticationState {
  final String code;
  final String message;

  AuthenticationForgotErrorState({@required this.code, @required this.message});
  @override
  String toString() => 'Authentication forgot error';
}

class AuthenticationPasswordChanging extends AuthenticationState {
  AuthenticationPasswordChanging();

  @override
  String toString() => 'Password changing';
}

class AuthenticationPasswordChangingErrorState extends AuthenticationState {
  final String code;
  final String message;

  AuthenticationPasswordChangingErrorState(
      {@required this.code, @required this.message});
  @override
  String toString() => 'Changing password error';
}
