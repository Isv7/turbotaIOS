///
//  Generated code. Do not modify.
//  source: region.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $0;
import 'region.pb.dart' as $1;
export 'region.pb.dart';

class RegionServiceClient extends $grpc.Client {
  static final _$regions = $grpc.ClientMethod<$0.Empty, $1.RegionsResponse>(
      '/v1.RegionService/Regions',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.RegionsResponse.fromBuffer(value));
  static final _$objects = $grpc.ClientMethod<$0.Empty, $1.RegionsResponse>(
      '/v1.RegionService/Objects',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.RegionsResponse.fromBuffer(value));
  static final _$adminEditRegion =
      $grpc.ClientMethod<$1.AdminEditRegionRequest, $1.RegionsResponse>(
          '/v1.RegionService/AdminEditRegion',
          ($1.AdminEditRegionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RegionsResponse.fromBuffer(value));
  static final _$adminDeleteRegion =
      $grpc.ClientMethod<$1.AdminDeleteRegionRequest, $1.RegionsResponse>(
          '/v1.RegionService/AdminDeleteRegion',
          ($1.AdminDeleteRegionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RegionsResponse.fromBuffer(value));

  RegionServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.RegionsResponse> regions($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$regions, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.RegionsResponse> objects($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$objects, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.RegionsResponse> adminEditRegion(
      $1.AdminEditRegionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminEditRegion, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.RegionsResponse> adminDeleteRegion(
      $1.AdminDeleteRegionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminDeleteRegion, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class RegionServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.RegionService';

  RegionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.RegionsResponse>(
        'Regions',
        regions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.RegionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.RegionsResponse>(
        'Objects',
        objects_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.RegionsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AdminEditRegionRequest, $1.RegionsResponse>(
            'AdminEditRegion',
            adminEditRegion_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AdminEditRegionRequest.fromBuffer(value),
            ($1.RegionsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AdminDeleteRegionRequest, $1.RegionsResponse>(
            'AdminDeleteRegion',
            adminDeleteRegion_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AdminDeleteRegionRequest.fromBuffer(value),
            ($1.RegionsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.RegionsResponse> regions_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return regions(call, await request);
  }

  $async.Future<$1.RegionsResponse> objects_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return objects(call, await request);
  }

  $async.Future<$1.RegionsResponse> adminEditRegion_Pre($grpc.ServiceCall call,
      $async.Future<$1.AdminEditRegionRequest> request) async {
    return adminEditRegion(call, await request);
  }

  $async.Future<$1.RegionsResponse> adminDeleteRegion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AdminDeleteRegionRequest> request) async {
    return adminDeleteRegion(call, await request);
  }

  $async.Future<$1.RegionsResponse> regions(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.RegionsResponse> objects(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.RegionsResponse> adminEditRegion(
      $grpc.ServiceCall call, $1.AdminEditRegionRequest request);
  $async.Future<$1.RegionsResponse> adminDeleteRegion(
      $grpc.ServiceCall call, $1.AdminDeleteRegionRequest request);
}
