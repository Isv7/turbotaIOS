///
//  Generated code. Do not modify.
//  source: subsector.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'subsector.pb.dart' as $6;
export 'subsector.pb.dart';

class SubsectorServiceClient extends $grpc.Client {
  static final _$adminSubsectors =
      $grpc.ClientMethod<$6.AdminSubsectorsRequest, $6.AdminSubsectorsResponse>(
          '/v1.SubsectorService/AdminSubsectors',
          ($6.AdminSubsectorsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.AdminSubsectorsResponse.fromBuffer(value));
  static final _$adminSubsector =
      $grpc.ClientMethod<$6.AdminSubsectorRequest, $6.AdminSubsectorResponse>(
          '/v1.SubsectorService/AdminSubsector',
          ($6.AdminSubsectorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.AdminSubsectorResponse.fromBuffer(value));
  static final _$adminEditSubsector = $grpc.ClientMethod<
          $6.AdminEditSubsectorRequest, $6.AdminSubsectorResponse>(
      '/v1.SubsectorService/AdminEditSubsector',
      ($6.AdminEditSubsectorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.AdminSubsectorResponse.fromBuffer(value));
  static final _$adminSaveSubsectorBurialsCoordinates = $grpc.ClientMethod<
          $6.AdminSaveSubsectorBurialsCoordinatesRequest,
          $6.AdminSubsectorResponse>(
      '/v1.SubsectorService/AdminSaveSubsectorBurialsCoordinates',
      ($6.AdminSaveSubsectorBurialsCoordinatesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.AdminSubsectorResponse.fromBuffer(value));
  static final _$adminDeleteSubsector = $grpc.ClientMethod<
          $6.AdminDeleteSubsectorRequest, $6.AdminSubsectorsResponse>(
      '/v1.SubsectorService/AdminDeleteSubsector',
      ($6.AdminDeleteSubsectorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.AdminSubsectorsResponse.fromBuffer(value));
  static final _$adminSectorSubsectors = $grpc.ClientMethod<
          $6.AdminSectorSubsectorsRequest, $6.AdminSectorSubsectorsResponse>(
      '/v1.SubsectorService/AdminSectorSubsectors',
      ($6.AdminSectorSubsectorsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.AdminSectorSubsectorsResponse.fromBuffer(value));
  static final _$adminSubsectorsAutocomplete = $grpc.ClientMethod<
          $6.AdminSubsectorsAutocompleteRequest,
          $6.AdminSubsectorsAutocompleteResponse>(
      '/v1.SubsectorService/AdminSubsectorsAutocomplete',
      ($6.AdminSubsectorsAutocompleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.AdminSubsectorsAutocompleteResponse.fromBuffer(value));

  SubsectorServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$6.AdminSubsectorsResponse> adminSubsectors(
      $6.AdminSubsectorsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminSubsectors, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.AdminSubsectorResponse> adminSubsector(
      $6.AdminSubsectorRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminSubsector, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.AdminSubsectorResponse> adminEditSubsector(
      $6.AdminEditSubsectorRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminEditSubsector, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.AdminSubsectorResponse>
      adminSaveSubsectorBurialsCoordinates(
          $6.AdminSaveSubsectorBurialsCoordinatesRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$adminSaveSubsectorBurialsCoordinates,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.AdminSubsectorsResponse> adminDeleteSubsector(
      $6.AdminDeleteSubsectorRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminDeleteSubsector, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.AdminSectorSubsectorsResponse> adminSectorSubsectors(
      $6.AdminSectorSubsectorsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminSectorSubsectors, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.AdminSubsectorsAutocompleteResponse>
      adminSubsectorsAutocomplete($6.AdminSubsectorsAutocompleteRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminSubsectorsAutocomplete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class SubsectorServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.SubsectorService';

  SubsectorServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.AdminSubsectorsRequest,
            $6.AdminSubsectorsResponse>(
        'AdminSubsectors',
        adminSubsectors_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AdminSubsectorsRequest.fromBuffer(value),
        ($6.AdminSubsectorsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AdminSubsectorRequest,
            $6.AdminSubsectorResponse>(
        'AdminSubsector',
        adminSubsector_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AdminSubsectorRequest.fromBuffer(value),
        ($6.AdminSubsectorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AdminEditSubsectorRequest,
            $6.AdminSubsectorResponse>(
        'AdminEditSubsector',
        adminEditSubsector_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AdminEditSubsectorRequest.fromBuffer(value),
        ($6.AdminSubsectorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $6.AdminSaveSubsectorBurialsCoordinatesRequest,
            $6.AdminSubsectorResponse>(
        'AdminSaveSubsectorBurialsCoordinates',
        adminSaveSubsectorBurialsCoordinates_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AdminSaveSubsectorBurialsCoordinatesRequest.fromBuffer(value),
        ($6.AdminSubsectorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AdminDeleteSubsectorRequest,
            $6.AdminSubsectorsResponse>(
        'AdminDeleteSubsector',
        adminDeleteSubsector_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AdminDeleteSubsectorRequest.fromBuffer(value),
        ($6.AdminSubsectorsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AdminSectorSubsectorsRequest,
            $6.AdminSectorSubsectorsResponse>(
        'AdminSectorSubsectors',
        adminSectorSubsectors_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AdminSectorSubsectorsRequest.fromBuffer(value),
        ($6.AdminSectorSubsectorsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AdminSubsectorsAutocompleteRequest,
            $6.AdminSubsectorsAutocompleteResponse>(
        'AdminSubsectorsAutocomplete',
        adminSubsectorsAutocomplete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AdminSubsectorsAutocompleteRequest.fromBuffer(value),
        ($6.AdminSubsectorsAutocompleteResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$6.AdminSubsectorsResponse> adminSubsectors_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.AdminSubsectorsRequest> request) async {
    return adminSubsectors(call, await request);
  }

  $async.Future<$6.AdminSubsectorResponse> adminSubsector_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.AdminSubsectorRequest> request) async {
    return adminSubsector(call, await request);
  }

  $async.Future<$6.AdminSubsectorResponse> adminEditSubsector_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.AdminEditSubsectorRequest> request) async {
    return adminEditSubsector(call, await request);
  }

  $async.Future<$6.AdminSubsectorResponse>
      adminSaveSubsectorBurialsCoordinates_Pre(
          $grpc.ServiceCall call,
          $async.Future<$6.AdminSaveSubsectorBurialsCoordinatesRequest>
              request) async {
    return adminSaveSubsectorBurialsCoordinates(call, await request);
  }

  $async.Future<$6.AdminSubsectorsResponse> adminDeleteSubsector_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.AdminDeleteSubsectorRequest> request) async {
    return adminDeleteSubsector(call, await request);
  }

  $async.Future<$6.AdminSectorSubsectorsResponse> adminSectorSubsectors_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.AdminSectorSubsectorsRequest> request) async {
    return adminSectorSubsectors(call, await request);
  }

  $async.Future<$6.AdminSubsectorsAutocompleteResponse>
      adminSubsectorsAutocomplete_Pre($grpc.ServiceCall call,
          $async.Future<$6.AdminSubsectorsAutocompleteRequest> request) async {
    return adminSubsectorsAutocomplete(call, await request);
  }

  $async.Future<$6.AdminSubsectorsResponse> adminSubsectors(
      $grpc.ServiceCall call, $6.AdminSubsectorsRequest request);
  $async.Future<$6.AdminSubsectorResponse> adminSubsector(
      $grpc.ServiceCall call, $6.AdminSubsectorRequest request);
  $async.Future<$6.AdminSubsectorResponse> adminEditSubsector(
      $grpc.ServiceCall call, $6.AdminEditSubsectorRequest request);
  $async.Future<$6.AdminSubsectorResponse> adminSaveSubsectorBurialsCoordinates(
      $grpc.ServiceCall call,
      $6.AdminSaveSubsectorBurialsCoordinatesRequest request);
  $async.Future<$6.AdminSubsectorsResponse> adminDeleteSubsector(
      $grpc.ServiceCall call, $6.AdminDeleteSubsectorRequest request);
  $async.Future<$6.AdminSectorSubsectorsResponse> adminSectorSubsectors(
      $grpc.ServiceCall call, $6.AdminSectorSubsectorsRequest request);
  $async.Future<$6.AdminSubsectorsAutocompleteResponse>
      adminSubsectorsAutocomplete($grpc.ServiceCall call,
          $6.AdminSubsectorsAutocompleteRequest request);
}
