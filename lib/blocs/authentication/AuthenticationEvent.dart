import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppLaunched extends AuthenticationEvent {
  @override
  String toString() => 'AppLaunched';
}

class AuthenticationLoadingEvent extends AuthenticationEvent {
  @override
  String toString() => 'Authentication loading event';
}

class AuthenticationClearErrorEvent extends AuthenticationEvent {
  @override
  String toString() => 'Authentication clear error event';
}

class AuthenticationLogInEvent extends AuthenticationEvent {
  final String login;
  final String password;

  AuthenticationLogInEvent({@required this.login, @required this.password});

  @override
  String toString() => 'Authentication log in event';
}

class AuthenticationFacebookSignInEvent extends AuthenticationEvent {
  AuthenticationFacebookSignInEvent();

  @override
  String toString() => 'Authentication facebook sign in event';
}

class AuthenticationAppleSignInEvent extends AuthenticationEvent {
  @override
  String toString() => 'Authentication apple sign in event';
}

class AuthenticationRegisterEvent extends AuthenticationEvent {
  final String phone;
  final String name;
  final String password;

  AuthenticationRegisterEvent(
      {@required this.phone, @required this.name, @required this.password});
  @override
  String toString() => 'Authentication register event';
}

class AuthenticationCodeSent extends AuthenticationEvent {
  final String phone;
  final String id;

  AuthenticationCodeSent({@required this.phone, @required this.id});

  @override
  String toString() => 'Authentication code sent';
}

class AuthenticationComplete extends AuthenticationEvent {
  AuthenticationComplete();

  @override
  String toString() => 'Authentication with phone complete';
}

class VerificationCodeError extends AuthenticationEvent {
  final String code;
  final String message;

  VerificationCodeError({@required this.code, @required this.message});

  @override
  String toString() => 'Authentication verification code error';
}

class AuthenticationConfirmPhoneCode extends AuthenticationEvent {
  final String phone;
  final String code;
  final String id;

  AuthenticationConfirmPhoneCode(
      {@required this.phone, @required this.code, @required this.id});

  @override
  String toString() => 'Authentication confirm phone code';
}

class AuthenticationProfileUpdateEvent extends AuthenticationEvent {
  final String name;
  final String email;
  final String password;
  final int countryID;
  final File image;
  final String description;

  AuthenticationProfileUpdateEvent({
    @required this.name,
    @required this.email,
    @required this.password,
    @required this.countryID,
    @required this.image,
    @required this.description,
  });
  @override
  String toString() => 'Authentication profile save event';
}

class AuthenticationForgotPasswordEvent extends AuthenticationEvent {
  final String phone;

  AuthenticationForgotPasswordEvent({
    @required this.phone,
  });
  @override
  String toString() => 'Authentication forgot password form event';
}

class AuthenticationChangePasswordEvent extends AuthenticationEvent {
  final String password;

  AuthenticationChangePasswordEvent({
    @required this.password,
  });
  @override
  String toString() => 'Authentication change password form event';
}

class AuthenticationLogOutEvent extends AuthenticationEvent {
  @override
  String toString() => 'Authentication log out event';
}
