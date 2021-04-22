///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $0;
export 'service.pb.dart';

class ServiceServiceClient extends $grpc.Client {
  static final _$adminServices =
      $grpc.ClientMethod<$0.AdminServicesRequest, $0.AdminServicesResponse>(
          '/v1.ServiceService/AdminServices',
          ($0.AdminServicesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminServicesResponse.fromBuffer(value));
  static final _$adminService =
      $grpc.ClientMethod<$0.AdminServiceRequest, $0.AdminServiceResponse>(
          '/v1.ServiceService/AdminService',
          ($0.AdminServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminServiceResponse.fromBuffer(value));
  static final _$adminEditService =
      $grpc.ClientMethod<$0.AdminEditServiceRequest, $0.AdminServiceResponse>(
          '/v1.ServiceService/AdminEditService',
          ($0.AdminEditServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminServiceResponse.fromBuffer(value));
  static final _$adminDeleteService = $grpc.ClientMethod<
          $0.AdminDeleteServiceRequest, $0.AdminServicesResponse>(
      '/v1.ServiceService/AdminDeleteService',
      ($0.AdminDeleteServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AdminServicesResponse.fromBuffer(value));
  static final _$adminNewServices =
      $grpc.ClientMethod<$0.AdminServicesRequest, $0.AdminNewServicesResponse>(
          '/v1.ServiceService/AdminNewServices',
          ($0.AdminServicesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminNewServicesResponse.fromBuffer(value));
  static final _$adminNewService =
      $grpc.ClientMethod<$0.AdminServiceRequest, $0.AdminNewServiceResponse>(
          '/v1.ServiceService/AdminNewService',
          ($0.AdminServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminNewServiceResponse.fromBuffer(value));
  static final _$adminEditNewService = $grpc.ClientMethod<
          $0.AdminEditNewServiceRequest, $0.AdminNewServiceResponse>(
      '/v1.ServiceService/AdminEditNewService',
      ($0.AdminEditNewServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AdminNewServiceResponse.fromBuffer(value));
  static final _$adminDeleteNewService = $grpc.ClientMethod<
          $0.AdminDeleteServiceRequest, $0.AdminNewServicesResponse>(
      '/v1.ServiceService/AdminDeleteNewService',
      ($0.AdminDeleteServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AdminNewServicesResponse.fromBuffer(value));
  static final _$adminNewServiceSetState = $grpc.ClientMethod<
          $0.AdminNewServiceSetStateRequest, $0.AdminNewServiceResponse>(
      '/v1.ServiceService/AdminNewServiceSetState',
      ($0.AdminNewServiceSetStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AdminNewServiceResponse.fromBuffer(value));
  static final _$editorServices =
      $grpc.ClientMethod<$0.EditorServicesRequest, $0.EditorServicesResponse>(
          '/v1.ServiceService/EditorServices',
          ($0.EditorServicesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EditorServicesResponse.fromBuffer(value));
  static final _$editorService =
      $grpc.ClientMethod<$0.EditorServiceRequest, $0.EditorServiceResponse>(
          '/v1.ServiceService/EditorService',
          ($0.EditorServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EditorServiceResponse.fromBuffer(value));
  static final _$editorEditService =
      $grpc.ClientMethod<$0.EditorEditServiceRequest, $0.EditorServiceResponse>(
          '/v1.ServiceService/EditorEditService',
          ($0.EditorEditServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EditorServiceResponse.fromBuffer(value));
  static final _$editorDeleteService = $grpc.ClientMethod<
          $0.EditorDeleteServiceRequest, $0.EditorServicesResponse>(
      '/v1.ServiceService/EditorDeleteService',
      ($0.EditorDeleteServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.EditorServicesResponse.fromBuffer(value));
  static final _$editorSelectServices = $grpc.ClientMethod<
          $0.EditorSelectServicesRequest, $0.EditorServicesResponse>(
      '/v1.ServiceService/EditorSelectServices',
      ($0.EditorSelectServicesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.EditorServicesResponse.fromBuffer(value));
  static final _$editorCreateNewService = $grpc.ClientMethod<
          $0.EditorCreateNewServiceRequest, $0.EditorNewServiceResponse>(
      '/v1.ServiceService/EditorCreateNewService',
      ($0.EditorCreateNewServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.EditorNewServiceResponse.fromBuffer(value));
  static final _$editorNewServices = $grpc.ClientMethod<
          $0.EditorNewServicesRequest, $0.EditorNewServicesResponse>(
      '/v1.ServiceService/EditorNewServices',
      ($0.EditorNewServicesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.EditorNewServicesResponse.fromBuffer(value));
  static final _$editorNewService = $grpc.ClientMethod<
          $0.EditorNewServiceRequest, $0.EditorNewServiceResponse>(
      '/v1.ServiceService/EditorNewService',
      ($0.EditorNewServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.EditorNewServiceResponse.fromBuffer(value));
  static final _$editorEditNewService = $grpc.ClientMethod<
          $0.EditorEditNewServiceRequest, $0.EditorNewServiceResponse>(
      '/v1.ServiceService/EditorEditNewService',
      ($0.EditorEditNewServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.EditorNewServiceResponse.fromBuffer(value));
  static final _$editorDeleteNewService = $grpc.ClientMethod<
          $0.EditorDeleteNewServiceRequest, $0.EditorNewServicesResponse>(
      '/v1.ServiceService/EditorDeleteNewService',
      ($0.EditorDeleteNewServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.EditorNewServicesResponse.fromBuffer(value));
  static final _$cleaningServicesList =
      $grpc.ClientMethod<$0.ServicesListRequest, $0.ServicesListResponse>(
          '/v1.ServiceService/CleaningServicesList',
          ($0.ServicesListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ServicesListResponse.fromBuffer(value));
  static final _$photoServicesList =
      $grpc.ClientMethod<$0.ServicesListRequest, $0.ServicesListResponse>(
          '/v1.ServiceService/PhotoServicesList',
          ($0.ServicesListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ServicesListResponse.fromBuffer(value));
  static final _$servicesList =
      $grpc.ClientMethod<$0.ServicesListRequest, $0.ServicesListResponse>(
          '/v1.ServiceService/ServicesList',
          ($0.ServicesListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ServicesListResponse.fromBuffer(value));

  ServiceServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.AdminServicesResponse> adminServices(
      $0.AdminServicesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminServices, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AdminServiceResponse> adminService(
      $0.AdminServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AdminServiceResponse> adminEditService(
      $0.AdminEditServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminEditService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AdminServicesResponse> adminDeleteService(
      $0.AdminDeleteServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminDeleteService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AdminNewServicesResponse> adminNewServices(
      $0.AdminServicesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminNewServices, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AdminNewServiceResponse> adminNewService(
      $0.AdminServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminNewService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AdminNewServiceResponse> adminEditNewService(
      $0.AdminEditNewServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminEditNewService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AdminNewServicesResponse> adminDeleteNewService(
      $0.AdminDeleteServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminDeleteNewService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AdminNewServiceResponse> adminNewServiceSetState(
      $0.AdminNewServiceSetStateRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminNewServiceSetState, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorServicesResponse> editorServices(
      $0.EditorServicesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorServices, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorServiceResponse> editorService(
      $0.EditorServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorServiceResponse> editorEditService(
      $0.EditorEditServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorEditService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorServicesResponse> editorDeleteService(
      $0.EditorDeleteServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorDeleteService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorServicesResponse> editorSelectServices(
      $0.EditorSelectServicesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorSelectServices, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorNewServiceResponse> editorCreateNewService(
      $0.EditorCreateNewServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorCreateNewService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorNewServicesResponse> editorNewServices(
      $0.EditorNewServicesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorNewServices, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorNewServiceResponse> editorNewService(
      $0.EditorNewServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorNewService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorNewServiceResponse> editorEditNewService(
      $0.EditorEditNewServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorEditNewService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorNewServicesResponse> editorDeleteNewService(
      $0.EditorDeleteNewServiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorDeleteNewService, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ServicesListResponse> cleaningServicesList(
      $0.ServicesListRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$cleaningServicesList, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ServicesListResponse> photoServicesList(
      $0.ServicesListRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$photoServicesList, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ServicesListResponse> servicesList(
      $0.ServicesListRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$servicesList, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ServiceServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.ServiceService';

  ServiceServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.AdminServicesRequest, $0.AdminServicesResponse>(
            'AdminServices',
            adminServices_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AdminServicesRequest.fromBuffer(value),
            ($0.AdminServicesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AdminServiceRequest, $0.AdminServiceResponse>(
            'AdminService',
            adminService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AdminServiceRequest.fromBuffer(value),
            ($0.AdminServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AdminEditServiceRequest,
            $0.AdminServiceResponse>(
        'AdminEditService',
        adminEditService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AdminEditServiceRequest.fromBuffer(value),
        ($0.AdminServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AdminDeleteServiceRequest,
            $0.AdminServicesResponse>(
        'AdminDeleteService',
        adminDeleteService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AdminDeleteServiceRequest.fromBuffer(value),
        ($0.AdminServicesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AdminServicesRequest,
            $0.AdminNewServicesResponse>(
        'AdminNewServices',
        adminNewServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AdminServicesRequest.fromBuffer(value),
        ($0.AdminNewServicesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AdminServiceRequest, $0.AdminNewServiceResponse>(
            'AdminNewService',
            adminNewService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AdminServiceRequest.fromBuffer(value),
            ($0.AdminNewServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AdminEditNewServiceRequest,
            $0.AdminNewServiceResponse>(
        'AdminEditNewService',
        adminEditNewService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AdminEditNewServiceRequest.fromBuffer(value),
        ($0.AdminNewServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AdminDeleteServiceRequest,
            $0.AdminNewServicesResponse>(
        'AdminDeleteNewService',
        adminDeleteNewService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AdminDeleteServiceRequest.fromBuffer(value),
        ($0.AdminNewServicesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AdminNewServiceSetStateRequest,
            $0.AdminNewServiceResponse>(
        'AdminNewServiceSetState',
        adminNewServiceSetState_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AdminNewServiceSetStateRequest.fromBuffer(value),
        ($0.AdminNewServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditorServicesRequest,
            $0.EditorServicesResponse>(
        'EditorServices',
        editorServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditorServicesRequest.fromBuffer(value),
        ($0.EditorServicesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.EditorServiceRequest, $0.EditorServiceResponse>(
            'EditorService',
            editorService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.EditorServiceRequest.fromBuffer(value),
            ($0.EditorServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditorEditServiceRequest,
            $0.EditorServiceResponse>(
        'EditorEditService',
        editorEditService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditorEditServiceRequest.fromBuffer(value),
        ($0.EditorServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditorDeleteServiceRequest,
            $0.EditorServicesResponse>(
        'EditorDeleteService',
        editorDeleteService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditorDeleteServiceRequest.fromBuffer(value),
        ($0.EditorServicesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditorSelectServicesRequest,
            $0.EditorServicesResponse>(
        'EditorSelectServices',
        editorSelectServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditorSelectServicesRequest.fromBuffer(value),
        ($0.EditorServicesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditorCreateNewServiceRequest,
            $0.EditorNewServiceResponse>(
        'EditorCreateNewService',
        editorCreateNewService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditorCreateNewServiceRequest.fromBuffer(value),
        ($0.EditorNewServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditorNewServicesRequest,
            $0.EditorNewServicesResponse>(
        'EditorNewServices',
        editorNewServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditorNewServicesRequest.fromBuffer(value),
        ($0.EditorNewServicesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditorNewServiceRequest,
            $0.EditorNewServiceResponse>(
        'EditorNewService',
        editorNewService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditorNewServiceRequest.fromBuffer(value),
        ($0.EditorNewServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditorEditNewServiceRequest,
            $0.EditorNewServiceResponse>(
        'EditorEditNewService',
        editorEditNewService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditorEditNewServiceRequest.fromBuffer(value),
        ($0.EditorNewServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditorDeleteNewServiceRequest,
            $0.EditorNewServicesResponse>(
        'EditorDeleteNewService',
        editorDeleteNewService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditorDeleteNewServiceRequest.fromBuffer(value),
        ($0.EditorNewServicesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ServicesListRequest, $0.ServicesListResponse>(
            'CleaningServicesList',
            cleaningServicesList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ServicesListRequest.fromBuffer(value),
            ($0.ServicesListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ServicesListRequest, $0.ServicesListResponse>(
            'PhotoServicesList',
            photoServicesList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ServicesListRequest.fromBuffer(value),
            ($0.ServicesListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ServicesListRequest, $0.ServicesListResponse>(
            'ServicesList',
            servicesList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ServicesListRequest.fromBuffer(value),
            ($0.ServicesListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AdminServicesResponse> adminServices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AdminServicesRequest> request) async {
    return adminServices(call, await request);
  }

  $async.Future<$0.AdminServiceResponse> adminService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AdminServiceRequest> request) async {
    return adminService(call, await request);
  }

  $async.Future<$0.AdminServiceResponse> adminEditService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AdminEditServiceRequest> request) async {
    return adminEditService(call, await request);
  }

  $async.Future<$0.AdminServicesResponse> adminDeleteService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AdminDeleteServiceRequest> request) async {
    return adminDeleteService(call, await request);
  }

  $async.Future<$0.AdminNewServicesResponse> adminNewServices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AdminServicesRequest> request) async {
    return adminNewServices(call, await request);
  }

  $async.Future<$0.AdminNewServiceResponse> adminNewService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AdminServiceRequest> request) async {
    return adminNewService(call, await request);
  }

  $async.Future<$0.AdminNewServiceResponse> adminEditNewService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AdminEditNewServiceRequest> request) async {
    return adminEditNewService(call, await request);
  }

  $async.Future<$0.AdminNewServicesResponse> adminDeleteNewService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AdminDeleteServiceRequest> request) async {
    return adminDeleteNewService(call, await request);
  }

  $async.Future<$0.AdminNewServiceResponse> adminNewServiceSetState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AdminNewServiceSetStateRequest> request) async {
    return adminNewServiceSetState(call, await request);
  }

  $async.Future<$0.EditorServicesResponse> editorServices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorServicesRequest> request) async {
    return editorServices(call, await request);
  }

  $async.Future<$0.EditorServiceResponse> editorService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorServiceRequest> request) async {
    return editorService(call, await request);
  }

  $async.Future<$0.EditorServiceResponse> editorEditService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorEditServiceRequest> request) async {
    return editorEditService(call, await request);
  }

  $async.Future<$0.EditorServicesResponse> editorDeleteService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorDeleteServiceRequest> request) async {
    return editorDeleteService(call, await request);
  }

  $async.Future<$0.EditorServicesResponse> editorSelectServices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorSelectServicesRequest> request) async {
    return editorSelectServices(call, await request);
  }

  $async.Future<$0.EditorNewServiceResponse> editorCreateNewService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorCreateNewServiceRequest> request) async {
    return editorCreateNewService(call, await request);
  }

  $async.Future<$0.EditorNewServicesResponse> editorNewServices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorNewServicesRequest> request) async {
    return editorNewServices(call, await request);
  }

  $async.Future<$0.EditorNewServiceResponse> editorNewService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorNewServiceRequest> request) async {
    return editorNewService(call, await request);
  }

  $async.Future<$0.EditorNewServiceResponse> editorEditNewService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorEditNewServiceRequest> request) async {
    return editorEditNewService(call, await request);
  }

  $async.Future<$0.EditorNewServicesResponse> editorDeleteNewService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorDeleteNewServiceRequest> request) async {
    return editorDeleteNewService(call, await request);
  }

  $async.Future<$0.ServicesListResponse> cleaningServicesList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ServicesListRequest> request) async {
    return cleaningServicesList(call, await request);
  }

  $async.Future<$0.ServicesListResponse> photoServicesList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ServicesListRequest> request) async {
    return photoServicesList(call, await request);
  }

  $async.Future<$0.ServicesListResponse> servicesList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ServicesListRequest> request) async {
    return servicesList(call, await request);
  }

  $async.Future<$0.AdminServicesResponse> adminServices(
      $grpc.ServiceCall call, $0.AdminServicesRequest request);
  $async.Future<$0.AdminServiceResponse> adminService(
      $grpc.ServiceCall call, $0.AdminServiceRequest request);
  $async.Future<$0.AdminServiceResponse> adminEditService(
      $grpc.ServiceCall call, $0.AdminEditServiceRequest request);
  $async.Future<$0.AdminServicesResponse> adminDeleteService(
      $grpc.ServiceCall call, $0.AdminDeleteServiceRequest request);
  $async.Future<$0.AdminNewServicesResponse> adminNewServices(
      $grpc.ServiceCall call, $0.AdminServicesRequest request);
  $async.Future<$0.AdminNewServiceResponse> adminNewService(
      $grpc.ServiceCall call, $0.AdminServiceRequest request);
  $async.Future<$0.AdminNewServiceResponse> adminEditNewService(
      $grpc.ServiceCall call, $0.AdminEditNewServiceRequest request);
  $async.Future<$0.AdminNewServicesResponse> adminDeleteNewService(
      $grpc.ServiceCall call, $0.AdminDeleteServiceRequest request);
  $async.Future<$0.AdminNewServiceResponse> adminNewServiceSetState(
      $grpc.ServiceCall call, $0.AdminNewServiceSetStateRequest request);
  $async.Future<$0.EditorServicesResponse> editorServices(
      $grpc.ServiceCall call, $0.EditorServicesRequest request);
  $async.Future<$0.EditorServiceResponse> editorService(
      $grpc.ServiceCall call, $0.EditorServiceRequest request);
  $async.Future<$0.EditorServiceResponse> editorEditService(
      $grpc.ServiceCall call, $0.EditorEditServiceRequest request);
  $async.Future<$0.EditorServicesResponse> editorDeleteService(
      $grpc.ServiceCall call, $0.EditorDeleteServiceRequest request);
  $async.Future<$0.EditorServicesResponse> editorSelectServices(
      $grpc.ServiceCall call, $0.EditorSelectServicesRequest request);
  $async.Future<$0.EditorNewServiceResponse> editorCreateNewService(
      $grpc.ServiceCall call, $0.EditorCreateNewServiceRequest request);
  $async.Future<$0.EditorNewServicesResponse> editorNewServices(
      $grpc.ServiceCall call, $0.EditorNewServicesRequest request);
  $async.Future<$0.EditorNewServiceResponse> editorNewService(
      $grpc.ServiceCall call, $0.EditorNewServiceRequest request);
  $async.Future<$0.EditorNewServiceResponse> editorEditNewService(
      $grpc.ServiceCall call, $0.EditorEditNewServiceRequest request);
  $async.Future<$0.EditorNewServicesResponse> editorDeleteNewService(
      $grpc.ServiceCall call, $0.EditorDeleteNewServiceRequest request);
  $async.Future<$0.ServicesListResponse> cleaningServicesList(
      $grpc.ServiceCall call, $0.ServicesListRequest request);
  $async.Future<$0.ServicesListResponse> photoServicesList(
      $grpc.ServiceCall call, $0.ServicesListRequest request);
  $async.Future<$0.ServicesListResponse> servicesList(
      $grpc.ServiceCall call, $0.ServicesListRequest request);
}
