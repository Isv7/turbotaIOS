///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $2;
import 'google/protobuf/empty.pb.dart' as $1;
export 'user.pb.dart';

class UserServiceClient extends $grpc.Client {
  static final _$auth = $grpc.ClientMethod<$2.AuthRequest, $2.UserResponse>(
      '/v1.UserService/Auth',
      ($2.AuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UserResponse.fromBuffer(value));
  static final _$me = $grpc.ClientMethod<$1.Empty, $2.UserResponse>(
      '/v1.UserService/Me',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UserResponse.fromBuffer(value));
  static final _$googleSignIn =
      $grpc.ClientMethod<$2.GoogleSignInRequest, $2.UserResponse>(
          '/v1.UserService/GoogleSignIn',
          ($2.GoogleSignInRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.UserResponse.fromBuffer(value));
  static final _$facebookSignIn =
      $grpc.ClientMethod<$2.FacebookSignInRequest, $2.UserResponse>(
          '/v1.UserService/FacebookSignIn',
          ($2.FacebookSignInRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.UserResponse.fromBuffer(value));
  static final _$register =
      $grpc.ClientMethod<$2.RegisterRequest, $2.UserResponse>(
          '/v1.UserService/Register',
          ($2.RegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.UserResponse.fromBuffer(value));
  static final _$forgotPassword =
      $grpc.ClientMethod<$2.ForgotPasswordRequest, $2.UserResponse>(
          '/v1.UserService/ForgotPassword',
          ($2.ForgotPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.UserResponse.fromBuffer(value));
  static final _$changePassword =
      $grpc.ClientMethod<$2.ChangePasswordRequest, $2.UserResponse>(
          '/v1.UserService/ChangePassword',
          ($2.ChangePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.UserResponse.fromBuffer(value));
  static final _$adminUsers =
      $grpc.ClientMethod<$2.AdminUsersRequest, $2.AdminUsersResponse>(
          '/v1.UserService/AdminUsers',
          ($2.AdminUsersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AdminUsersResponse.fromBuffer(value));
  static final _$adminUser =
      $grpc.ClientMethod<$2.AdminUserRequest, $2.AdminUserResponse>(
          '/v1.UserService/AdminUser',
          ($2.AdminUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AdminUserResponse.fromBuffer(value));
  static final _$adminEditUser =
      $grpc.ClientMethod<$2.AdminEditUserRequest, $2.AdminUserResponse>(
          '/v1.UserService/AdminEditUser',
          ($2.AdminEditUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AdminUserResponse.fromBuffer(value));
  static final _$adminDeleteUser =
      $grpc.ClientMethod<$2.AdminDeleteUserRequest, $2.AdminUsersResponse>(
          '/v1.UserService/AdminDeleteUser',
          ($2.AdminDeleteUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AdminUsersResponse.fromBuffer(value));
  static final _$adminEditors =
      $grpc.ClientMethod<$1.Empty, $2.AdminEditorsResponse>(
          '/v1.UserService/AdminEditors',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AdminEditorsResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$2.UserResponse> auth($2.AuthRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$auth, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UserResponse> me($1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$me, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UserResponse> googleSignIn(
      $2.GoogleSignInRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$googleSignIn, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UserResponse> facebookSignIn(
      $2.FacebookSignInRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$facebookSignIn, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UserResponse> register($2.RegisterRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$register, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UserResponse> forgotPassword(
      $2.ForgotPasswordRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$forgotPassword, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UserResponse> changePassword(
      $2.ChangePasswordRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$changePassword, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.AdminUsersResponse> adminUsers(
      $2.AdminUsersRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminUsers, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.AdminUserResponse> adminUser(
      $2.AdminUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$adminUser, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.AdminUserResponse> adminEditUser(
      $2.AdminEditUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminEditUser, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.AdminUsersResponse> adminDeleteUser(
      $2.AdminDeleteUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminDeleteUser, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.AdminEditorsResponse> adminEditors($1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminEditors, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.AuthRequest, $2.UserResponse>(
        'Auth',
        auth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AuthRequest.fromBuffer(value),
        ($2.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.UserResponse>(
        'Me',
        me_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GoogleSignInRequest, $2.UserResponse>(
        'GoogleSignIn',
        googleSignIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GoogleSignInRequest.fromBuffer(value),
        ($2.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FacebookSignInRequest, $2.UserResponse>(
        'FacebookSignIn',
        facebookSignIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.FacebookSignInRequest.fromBuffer(value),
        ($2.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RegisterRequest, $2.UserResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.RegisterRequest.fromBuffer(value),
        ($2.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ForgotPasswordRequest, $2.UserResponse>(
        'ForgotPassword',
        forgotPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ForgotPasswordRequest.fromBuffer(value),
        ($2.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ChangePasswordRequest, $2.UserResponse>(
        'ChangePassword',
        changePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ChangePasswordRequest.fromBuffer(value),
        ($2.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AdminUsersRequest, $2.AdminUsersResponse>(
        'AdminUsers',
        adminUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AdminUsersRequest.fromBuffer(value),
        ($2.AdminUsersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AdminUserRequest, $2.AdminUserResponse>(
        'AdminUser',
        adminUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AdminUserRequest.fromBuffer(value),
        ($2.AdminUserResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.AdminEditUserRequest, $2.AdminUserResponse>(
            'AdminEditUser',
            adminEditUser_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.AdminEditUserRequest.fromBuffer(value),
            ($2.AdminUserResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.AdminDeleteUserRequest, $2.AdminUsersResponse>(
            'AdminDeleteUser',
            adminDeleteUser_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.AdminDeleteUserRequest.fromBuffer(value),
            ($2.AdminUsersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.AdminEditorsResponse>(
        'AdminEditors',
        adminEditors_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.AdminEditorsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.UserResponse> auth_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AuthRequest> request) async {
    return auth(call, await request);
  }

  $async.Future<$2.UserResponse> me_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return me(call, await request);
  }

  $async.Future<$2.UserResponse> googleSignIn_Pre($grpc.ServiceCall call,
      $async.Future<$2.GoogleSignInRequest> request) async {
    return googleSignIn(call, await request);
  }

  $async.Future<$2.UserResponse> facebookSignIn_Pre($grpc.ServiceCall call,
      $async.Future<$2.FacebookSignInRequest> request) async {
    return facebookSignIn(call, await request);
  }

  $async.Future<$2.UserResponse> register_Pre(
      $grpc.ServiceCall call, $async.Future<$2.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$2.UserResponse> forgotPassword_Pre($grpc.ServiceCall call,
      $async.Future<$2.ForgotPasswordRequest> request) async {
    return forgotPassword(call, await request);
  }

  $async.Future<$2.UserResponse> changePassword_Pre($grpc.ServiceCall call,
      $async.Future<$2.ChangePasswordRequest> request) async {
    return changePassword(call, await request);
  }

  $async.Future<$2.AdminUsersResponse> adminUsers_Pre($grpc.ServiceCall call,
      $async.Future<$2.AdminUsersRequest> request) async {
    return adminUsers(call, await request);
  }

  $async.Future<$2.AdminUserResponse> adminUser_Pre($grpc.ServiceCall call,
      $async.Future<$2.AdminUserRequest> request) async {
    return adminUser(call, await request);
  }

  $async.Future<$2.AdminUserResponse> adminEditUser_Pre($grpc.ServiceCall call,
      $async.Future<$2.AdminEditUserRequest> request) async {
    return adminEditUser(call, await request);
  }

  $async.Future<$2.AdminUsersResponse> adminDeleteUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.AdminDeleteUserRequest> request) async {
    return adminDeleteUser(call, await request);
  }

  $async.Future<$2.AdminEditorsResponse> adminEditors_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return adminEditors(call, await request);
  }

  $async.Future<$2.UserResponse> auth(
      $grpc.ServiceCall call, $2.AuthRequest request);
  $async.Future<$2.UserResponse> me($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$2.UserResponse> googleSignIn(
      $grpc.ServiceCall call, $2.GoogleSignInRequest request);
  $async.Future<$2.UserResponse> facebookSignIn(
      $grpc.ServiceCall call, $2.FacebookSignInRequest request);
  $async.Future<$2.UserResponse> register(
      $grpc.ServiceCall call, $2.RegisterRequest request);
  $async.Future<$2.UserResponse> forgotPassword(
      $grpc.ServiceCall call, $2.ForgotPasswordRequest request);
  $async.Future<$2.UserResponse> changePassword(
      $grpc.ServiceCall call, $2.ChangePasswordRequest request);
  $async.Future<$2.AdminUsersResponse> adminUsers(
      $grpc.ServiceCall call, $2.AdminUsersRequest request);
  $async.Future<$2.AdminUserResponse> adminUser(
      $grpc.ServiceCall call, $2.AdminUserRequest request);
  $async.Future<$2.AdminUserResponse> adminEditUser(
      $grpc.ServiceCall call, $2.AdminEditUserRequest request);
  $async.Future<$2.AdminUsersResponse> adminDeleteUser(
      $grpc.ServiceCall call, $2.AdminDeleteUserRequest request);
  $async.Future<$2.AdminEditorsResponse> adminEditors(
      $grpc.ServiceCall call, $1.Empty request);
}
