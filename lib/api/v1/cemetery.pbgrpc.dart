///
//  Generated code. Do not modify.
//  source: cemetery.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'cemetery.pb.dart' as $4;
export 'cemetery.pb.dart';

class CemeteryServiceClient extends $grpc.Client {
  static final _$adminCemeteries =
      $grpc.ClientMethod<$4.AdminCemeteriesRequest, $4.AdminCemeteriesResponse>(
          '/v1.CemeteryService/AdminCemeteries',
          ($4.AdminCemeteriesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.AdminCemeteriesResponse.fromBuffer(value));
  static final _$adminCemetery =
      $grpc.ClientMethod<$4.AdminCemeteryRequest, $4.AdminCemeteryResponse>(
          '/v1.CemeteryService/AdminCemetery',
          ($4.AdminCemeteryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.AdminCemeteryResponse.fromBuffer(value));
  static final _$adminEditCemetery =
      $grpc.ClientMethod<$4.AdminEditCemeteryRequest, $4.AdminCemeteryResponse>(
          '/v1.CemeteryService/AdminEditCemetery',
          ($4.AdminEditCemeteryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.AdminCemeteryResponse.fromBuffer(value));
  static final _$adminDeleteCemetery = $grpc.ClientMethod<
          $4.AdminDeleteCemeteryRequest, $4.AdminCemeteriesResponse>(
      '/v1.CemeteryService/AdminDeleteCemetery',
      ($4.AdminDeleteCemeteryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.AdminCemeteriesResponse.fromBuffer(value));
  static final _$adminCityCemeteries = $grpc.ClientMethod<
          $4.AdminCityCemeteriesRequest, $4.AdminCityCemeteriesResponse>(
      '/v1.CemeteryService/AdminCityCemeteries',
      ($4.AdminCityCemeteriesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.AdminCityCemeteriesResponse.fromBuffer(value));

  CemeteryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$4.AdminCemeteriesResponse> adminCemeteries(
      $4.AdminCemeteriesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminCemeteries, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.AdminCemeteryResponse> adminCemetery(
      $4.AdminCemeteryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminCemetery, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.AdminCemeteryResponse> adminEditCemetery(
      $4.AdminEditCemeteryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminEditCemetery, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.AdminCemeteriesResponse> adminDeleteCemetery(
      $4.AdminDeleteCemeteryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminDeleteCemetery, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.AdminCityCemeteriesResponse> adminCityCemeteries(
      $4.AdminCityCemeteriesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminCityCemeteries, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class CemeteryServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.CemeteryService';

  CemeteryServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.AdminCemeteriesRequest,
            $4.AdminCemeteriesResponse>(
        'AdminCemeteries',
        adminCemeteries_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AdminCemeteriesRequest.fromBuffer(value),
        ($4.AdminCemeteriesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.AdminCemeteryRequest, $4.AdminCemeteryResponse>(
            'AdminCemetery',
            adminCemetery_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.AdminCemeteryRequest.fromBuffer(value),
            ($4.AdminCemeteryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AdminEditCemeteryRequest,
            $4.AdminCemeteryResponse>(
        'AdminEditCemetery',
        adminEditCemetery_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AdminEditCemeteryRequest.fromBuffer(value),
        ($4.AdminCemeteryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AdminDeleteCemeteryRequest,
            $4.AdminCemeteriesResponse>(
        'AdminDeleteCemetery',
        adminDeleteCemetery_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AdminDeleteCemeteryRequest.fromBuffer(value),
        ($4.AdminCemeteriesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AdminCityCemeteriesRequest,
            $4.AdminCityCemeteriesResponse>(
        'AdminCityCemeteries',
        adminCityCemeteries_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AdminCityCemeteriesRequest.fromBuffer(value),
        ($4.AdminCityCemeteriesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.AdminCemeteriesResponse> adminCemeteries_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.AdminCemeteriesRequest> request) async {
    return adminCemeteries(call, await request);
  }

  $async.Future<$4.AdminCemeteryResponse> adminCemetery_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.AdminCemeteryRequest> request) async {
    return adminCemetery(call, await request);
  }

  $async.Future<$4.AdminCemeteryResponse> adminEditCemetery_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.AdminEditCemeteryRequest> request) async {
    return adminEditCemetery(call, await request);
  }

  $async.Future<$4.AdminCemeteriesResponse> adminDeleteCemetery_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.AdminDeleteCemeteryRequest> request) async {
    return adminDeleteCemetery(call, await request);
  }

  $async.Future<$4.AdminCityCemeteriesResponse> adminCityCemeteries_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.AdminCityCemeteriesRequest> request) async {
    return adminCityCemeteries(call, await request);
  }

  $async.Future<$4.AdminCemeteriesResponse> adminCemeteries(
      $grpc.ServiceCall call, $4.AdminCemeteriesRequest request);
  $async.Future<$4.AdminCemeteryResponse> adminCemetery(
      $grpc.ServiceCall call, $4.AdminCemeteryRequest request);
  $async.Future<$4.AdminCemeteryResponse> adminEditCemetery(
      $grpc.ServiceCall call, $4.AdminEditCemeteryRequest request);
  $async.Future<$4.AdminCemeteriesResponse> adminDeleteCemetery(
      $grpc.ServiceCall call, $4.AdminDeleteCemeteryRequest request);
  $async.Future<$4.AdminCityCemeteriesResponse> adminCityCemeteries(
      $grpc.ServiceCall call, $4.AdminCityCemeteriesRequest request);
}
