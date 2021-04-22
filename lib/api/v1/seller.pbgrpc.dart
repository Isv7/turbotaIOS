///
//  Generated code. Do not modify.
//  source: seller.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $1;
import 'seller.pb.dart' as $3;
export 'seller.pb.dart';

class SellerServiceClient extends $grpc.Client {
  static final _$sellerProfile =
      $grpc.ClientMethod<$1.Empty, $3.SellerProfileResponse>(
          '/v1.SellerService/SellerProfile',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.SellerProfileResponse.fromBuffer(value));
  static final _$sellerEditProfile =
      $grpc.ClientMethod<$3.SellerEditProfileRequest, $3.SellerProfileResponse>(
          '/v1.SellerService/SellerEditProfile',
          ($3.SellerEditProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.SellerProfileResponse.fromBuffer(value));
  static final _$sellerDeleteFile =
      $grpc.ClientMethod<$3.SellerDeleteFileRequest, $3.SellerProfileResponse>(
          '/v1.SellerService/SellerDeleteFile',
          ($3.SellerDeleteFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.SellerProfileResponse.fromBuffer(value));

  SellerServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$3.SellerProfileResponse> sellerProfile($1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerProfile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$3.SellerProfileResponse> sellerEditProfile(
      $3.SellerEditProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerEditProfile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$3.SellerProfileResponse> sellerDeleteFile(
      $3.SellerDeleteFileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerDeleteFile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class SellerServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.SellerService';

  SellerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $3.SellerProfileResponse>(
        'SellerProfile',
        sellerProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($3.SellerProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SellerEditProfileRequest,
            $3.SellerProfileResponse>(
        'SellerEditProfile',
        sellerEditProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.SellerEditProfileRequest.fromBuffer(value),
        ($3.SellerProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SellerDeleteFileRequest,
            $3.SellerProfileResponse>(
        'SellerDeleteFile',
        sellerDeleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.SellerDeleteFileRequest.fromBuffer(value),
        ($3.SellerProfileResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.SellerProfileResponse> sellerProfile_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return sellerProfile(call, await request);
  }

  $async.Future<$3.SellerProfileResponse> sellerEditProfile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.SellerEditProfileRequest> request) async {
    return sellerEditProfile(call, await request);
  }

  $async.Future<$3.SellerProfileResponse> sellerDeleteFile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.SellerDeleteFileRequest> request) async {
    return sellerDeleteFile(call, await request);
  }

  $async.Future<$3.SellerProfileResponse> sellerProfile(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$3.SellerProfileResponse> sellerEditProfile(
      $grpc.ServiceCall call, $3.SellerEditProfileRequest request);
  $async.Future<$3.SellerProfileResponse> sellerDeleteFile(
      $grpc.ServiceCall call, $3.SellerDeleteFileRequest request);
}
