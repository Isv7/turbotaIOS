///
//  Generated code. Do not modify.
//  source: sector.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'sector.pb.dart' as $5;
export 'sector.pb.dart';

class SectorServiceClient extends $grpc.Client {
  static final _$adminSectors =
      $grpc.ClientMethod<$5.AdminSectorsRequest, $5.AdminSectorsResponse>(
          '/v1.SectorService/AdminSectors',
          ($5.AdminSectorsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AdminSectorsResponse.fromBuffer(value));
  static final _$adminSector =
      $grpc.ClientMethod<$5.AdminSectorRequest, $5.AdminSectorResponse>(
          '/v1.SectorService/AdminSector',
          ($5.AdminSectorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AdminSectorResponse.fromBuffer(value));
  static final _$adminEditSector =
      $grpc.ClientMethod<$5.AdminEditSectorRequest, $5.AdminSectorResponse>(
          '/v1.SectorService/AdminEditSector',
          ($5.AdminEditSectorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AdminSectorResponse.fromBuffer(value));
  static final _$adminDeleteSector =
      $grpc.ClientMethod<$5.AdminDeleteSectorRequest, $5.AdminSectorsResponse>(
          '/v1.SectorService/AdminDeleteSector',
          ($5.AdminDeleteSectorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AdminSectorsResponse.fromBuffer(value));
  static final _$adminCemeterySectors = $grpc.ClientMethod<
          $5.AdminCemeterySectorsRequest, $5.AdminCemeterySectorsResponse>(
      '/v1.SectorService/AdminCemeterySectors',
      ($5.AdminCemeterySectorsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.AdminCemeterySectorsResponse.fromBuffer(value));

  SectorServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$5.AdminSectorsResponse> adminSectors(
      $5.AdminSectorsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminSectors, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.AdminSectorResponse> adminSector(
      $5.AdminSectorRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminSector, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.AdminSectorResponse> adminEditSector(
      $5.AdminEditSectorRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminEditSector, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.AdminSectorsResponse> adminDeleteSector(
      $5.AdminDeleteSectorRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminDeleteSector, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$5.AdminCemeterySectorsResponse> adminCemeterySectors(
      $5.AdminCemeterySectorsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminCemeterySectors, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class SectorServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.SectorService';

  SectorServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$5.AdminSectorsRequest, $5.AdminSectorsResponse>(
            'AdminSectors',
            adminSectors_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.AdminSectorsRequest.fromBuffer(value),
            ($5.AdminSectorsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.AdminSectorRequest, $5.AdminSectorResponse>(
            'AdminSector',
            adminSector_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.AdminSectorRequest.fromBuffer(value),
            ($5.AdminSectorResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.AdminEditSectorRequest, $5.AdminSectorResponse>(
            'AdminEditSector',
            adminEditSector_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.AdminEditSectorRequest.fromBuffer(value),
            ($5.AdminSectorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AdminDeleteSectorRequest,
            $5.AdminSectorsResponse>(
        'AdminDeleteSector',
        adminDeleteSector_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.AdminDeleteSectorRequest.fromBuffer(value),
        ($5.AdminSectorsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AdminCemeterySectorsRequest,
            $5.AdminCemeterySectorsResponse>(
        'AdminCemeterySectors',
        adminCemeterySectors_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.AdminCemeterySectorsRequest.fromBuffer(value),
        ($5.AdminCemeterySectorsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.AdminSectorsResponse> adminSectors_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.AdminSectorsRequest> request) async {
    return adminSectors(call, await request);
  }

  $async.Future<$5.AdminSectorResponse> adminSector_Pre($grpc.ServiceCall call,
      $async.Future<$5.AdminSectorRequest> request) async {
    return adminSector(call, await request);
  }

  $async.Future<$5.AdminSectorResponse> adminEditSector_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.AdminEditSectorRequest> request) async {
    return adminEditSector(call, await request);
  }

  $async.Future<$5.AdminSectorsResponse> adminDeleteSector_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.AdminDeleteSectorRequest> request) async {
    return adminDeleteSector(call, await request);
  }

  $async.Future<$5.AdminCemeterySectorsResponse> adminCemeterySectors_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.AdminCemeterySectorsRequest> request) async {
    return adminCemeterySectors(call, await request);
  }

  $async.Future<$5.AdminSectorsResponse> adminSectors(
      $grpc.ServiceCall call, $5.AdminSectorsRequest request);
  $async.Future<$5.AdminSectorResponse> adminSector(
      $grpc.ServiceCall call, $5.AdminSectorRequest request);
  $async.Future<$5.AdminSectorResponse> adminEditSector(
      $grpc.ServiceCall call, $5.AdminEditSectorRequest request);
  $async.Future<$5.AdminSectorsResponse> adminDeleteSector(
      $grpc.ServiceCall call, $5.AdminDeleteSectorRequest request);
  $async.Future<$5.AdminCemeterySectorsResponse> adminCemeterySectors(
      $grpc.ServiceCall call, $5.AdminCemeterySectorsRequest request);
}
