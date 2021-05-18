///
//  Generated code. Do not modify.
//  source: burial.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'burial.pb.dart' as $7;
export 'burial.pb.dart';

class BurialServiceClient extends $grpc.Client {
  static final _$adminBurials =
      $grpc.ClientMethod<$7.AdminBurialsRequest, $7.AdminBurialsResponse>(
          '/v1.BurialService/AdminBurials',
          ($7.AdminBurialsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.AdminBurialsResponse.fromBuffer(value));
  static final _$adminBurial =
      $grpc.ClientMethod<$7.AdminBurialRequest, $7.AdminBurialResponse>(
          '/v1.BurialService/AdminBurial',
          ($7.AdminBurialRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.AdminBurialResponse.fromBuffer(value));
  static final _$adminEditBurial =
      $grpc.ClientMethod<$7.AdminEditBurialRequest, $7.AdminBurialResponse>(
          '/v1.BurialService/AdminEditBurial',
          ($7.AdminEditBurialRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.AdminBurialResponse.fromBuffer(value));
  static final _$adminDeleteBurial =
      $grpc.ClientMethod<$7.AdminDeleteBurialRequest, $7.AdminBurialsResponse>(
          '/v1.BurialService/AdminDeleteBurial',
          ($7.AdminDeleteBurialRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.AdminBurialsResponse.fromBuffer(value));
  static final _$burialSearch =
      $grpc.ClientMethod<$7.BurialSearchRequest, $7.BurialsResponse>(
          '/v1.BurialService/BurialSearch',
          ($7.BurialSearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.BurialsResponse.fromBuffer(value));
  static final _$adminBurialsAutocomplete = $grpc.ClientMethod<
          $7.AdminBurialsAutocompleteRequest,
          $7.AdminBurialsAutocompleteResponse>(
      '/v1.BurialService/AdminBurialsAutocomplete',
      ($7.AdminBurialsAutocompleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.AdminBurialsAutocompleteResponse.fromBuffer(value));
  static final _$adminNewBurials =
      $grpc.ClientMethod<$7.AdminNewBurialsRequest, $7.AdminNewBurialsResponse>(
          '/v1.BurialService/AdminNewBurials',
          ($7.AdminNewBurialsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.AdminNewBurialsResponse.fromBuffer(value));
  static final _$adminNewBurial =
      $grpc.ClientMethod<$7.AdminNewBurialRequest, $7.AdminNewBurialResponse>(
          '/v1.BurialService/AdminNewBurial',
          ($7.AdminNewBurialRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.AdminNewBurialResponse.fromBuffer(value));
  static final _$adminNewEditBurial = $grpc.ClientMethod<
          $7.AdminNewEditBurialRequest, $7.AdminNewBurialResponse>(
      '/v1.BurialService/AdminNewEditBurial',
      ($7.AdminNewEditBurialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.AdminNewBurialResponse.fromBuffer(value));
  static final _$adminNewBurialSetState = $grpc.ClientMethod<
          $7.AdminNewBurialSetStateRequest, $7.AdminNewBurialResponse>(
      '/v1.BurialService/AdminNewBurialSetState',
      ($7.AdminNewBurialSetStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.AdminNewBurialResponse.fromBuffer(value));
  static final _$burial =
      $grpc.ClientMethod<$7.BurialRequest, $7.BurialResponse>(
          '/v1.BurialService/Burial',
          ($7.BurialRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.BurialResponse.fromBuffer(value));

  BurialServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$7.AdminBurialsResponse> adminBurials(
      $7.AdminBurialsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminBurials, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.AdminBurialResponse> adminBurial(
      $7.AdminBurialRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminBurial, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.AdminBurialResponse> adminEditBurial(
      $7.AdminEditBurialRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminEditBurial, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.AdminBurialsResponse> adminDeleteBurial(
      $7.AdminDeleteBurialRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminDeleteBurial, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.BurialsResponse> burialSearch(
      $7.BurialSearchRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$burialSearch, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.AdminBurialsAutocompleteResponse>
      adminBurialsAutocomplete($7.AdminBurialsAutocompleteRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminBurialsAutocomplete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.AdminNewBurialsResponse> adminNewBurials(
      $7.AdminNewBurialsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminNewBurials, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.AdminNewBurialResponse> adminNewBurial(
      $7.AdminNewBurialRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminNewBurial, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.AdminNewBurialResponse> adminNewEditBurial(
      $7.AdminNewEditBurialRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminNewEditBurial, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.AdminNewBurialResponse> adminNewBurialSetState(
      $7.AdminNewBurialSetStateRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminNewBurialSetState, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.BurialResponse> burial($7.BurialRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$burial, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class BurialServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.BurialService';

  BurialServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$7.AdminBurialsRequest, $7.AdminBurialsResponse>(
            'AdminBurials',
            adminBurials_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.AdminBurialsRequest.fromBuffer(value),
            ($7.AdminBurialsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.AdminBurialRequest, $7.AdminBurialResponse>(
            'AdminBurial',
            adminBurial_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.AdminBurialRequest.fromBuffer(value),
            ($7.AdminBurialResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.AdminEditBurialRequest, $7.AdminBurialResponse>(
            'AdminEditBurial',
            adminEditBurial_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.AdminEditBurialRequest.fromBuffer(value),
            ($7.AdminBurialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AdminDeleteBurialRequest,
            $7.AdminBurialsResponse>(
        'AdminDeleteBurial',
        adminDeleteBurial_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AdminDeleteBurialRequest.fromBuffer(value),
        ($7.AdminBurialsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.BurialSearchRequest, $7.BurialsResponse>(
        'BurialSearch',
        burialSearch_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.BurialSearchRequest.fromBuffer(value),
        ($7.BurialsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AdminBurialsAutocompleteRequest,
            $7.AdminBurialsAutocompleteResponse>(
        'AdminBurialsAutocomplete',
        adminBurialsAutocomplete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AdminBurialsAutocompleteRequest.fromBuffer(value),
        ($7.AdminBurialsAutocompleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AdminNewBurialsRequest,
            $7.AdminNewBurialsResponse>(
        'AdminNewBurials',
        adminNewBurials_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AdminNewBurialsRequest.fromBuffer(value),
        ($7.AdminNewBurialsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AdminNewBurialRequest,
            $7.AdminNewBurialResponse>(
        'AdminNewBurial',
        adminNewBurial_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AdminNewBurialRequest.fromBuffer(value),
        ($7.AdminNewBurialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AdminNewEditBurialRequest,
            $7.AdminNewBurialResponse>(
        'AdminNewEditBurial',
        adminNewEditBurial_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AdminNewEditBurialRequest.fromBuffer(value),
        ($7.AdminNewBurialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AdminNewBurialSetStateRequest,
            $7.AdminNewBurialResponse>(
        'AdminNewBurialSetState',
        adminNewBurialSetState_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AdminNewBurialSetStateRequest.fromBuffer(value),
        ($7.AdminNewBurialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.BurialRequest, $7.BurialResponse>(
        'Burial',
        burial_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.BurialRequest.fromBuffer(value),
        ($7.BurialResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.AdminBurialsResponse> adminBurials_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AdminBurialsRequest> request) async {
    return adminBurials(call, await request);
  }

  $async.Future<$7.AdminBurialResponse> adminBurial_Pre($grpc.ServiceCall call,
      $async.Future<$7.AdminBurialRequest> request) async {
    return adminBurial(call, await request);
  }

  $async.Future<$7.AdminBurialResponse> adminEditBurial_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AdminEditBurialRequest> request) async {
    return adminEditBurial(call, await request);
  }

  $async.Future<$7.AdminBurialsResponse> adminDeleteBurial_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AdminDeleteBurialRequest> request) async {
    return adminDeleteBurial(call, await request);
  }

  $async.Future<$7.BurialsResponse> burialSearch_Pre($grpc.ServiceCall call,
      $async.Future<$7.BurialSearchRequest> request) async {
    return burialSearch(call, await request);
  }

  $async.Future<$7.AdminBurialsAutocompleteResponse>
      adminBurialsAutocomplete_Pre($grpc.ServiceCall call,
          $async.Future<$7.AdminBurialsAutocompleteRequest> request) async {
    return adminBurialsAutocomplete(call, await request);
  }

  $async.Future<$7.AdminNewBurialsResponse> adminNewBurials_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AdminNewBurialsRequest> request) async {
    return adminNewBurials(call, await request);
  }

  $async.Future<$7.AdminNewBurialResponse> adminNewBurial_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AdminNewBurialRequest> request) async {
    return adminNewBurial(call, await request);
  }

  $async.Future<$7.AdminNewBurialResponse> adminNewEditBurial_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AdminNewEditBurialRequest> request) async {
    return adminNewEditBurial(call, await request);
  }

  $async.Future<$7.AdminNewBurialResponse> adminNewBurialSetState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AdminNewBurialSetStateRequest> request) async {
    return adminNewBurialSetState(call, await request);
  }

  $async.Future<$7.BurialResponse> burial_Pre(
      $grpc.ServiceCall call, $async.Future<$7.BurialRequest> request) async {
    return burial(call, await request);
  }

  $async.Future<$7.AdminBurialsResponse> adminBurials(
      $grpc.ServiceCall call, $7.AdminBurialsRequest request);
  $async.Future<$7.AdminBurialResponse> adminBurial(
      $grpc.ServiceCall call, $7.AdminBurialRequest request);
  $async.Future<$7.AdminBurialResponse> adminEditBurial(
      $grpc.ServiceCall call, $7.AdminEditBurialRequest request);
  $async.Future<$7.AdminBurialsResponse> adminDeleteBurial(
      $grpc.ServiceCall call, $7.AdminDeleteBurialRequest request);
  $async.Future<$7.BurialsResponse> burialSearch(
      $grpc.ServiceCall call, $7.BurialSearchRequest request);
  $async.Future<$7.AdminBurialsAutocompleteResponse> adminBurialsAutocomplete(
      $grpc.ServiceCall call, $7.AdminBurialsAutocompleteRequest request);
  $async.Future<$7.AdminNewBurialsResponse> adminNewBurials(
      $grpc.ServiceCall call, $7.AdminNewBurialsRequest request);
  $async.Future<$7.AdminNewBurialResponse> adminNewBurial(
      $grpc.ServiceCall call, $7.AdminNewBurialRequest request);
  $async.Future<$7.AdminNewBurialResponse> adminNewEditBurial(
      $grpc.ServiceCall call, $7.AdminNewEditBurialRequest request);
  $async.Future<$7.AdminNewBurialResponse> adminNewBurialSetState(
      $grpc.ServiceCall call, $7.AdminNewBurialSetStateRequest request);
  $async.Future<$7.BurialResponse> burial(
      $grpc.ServiceCall call, $7.BurialRequest request);
}
