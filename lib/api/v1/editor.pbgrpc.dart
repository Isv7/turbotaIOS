///
//  Generated code. Do not modify.
//  source: editor.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'editor.pb.dart' as $8;
import 'google/protobuf/empty.pb.dart' as $0;
export 'editor.pb.dart';

class EditorServiceClient extends $grpc.Client {
  static final _$editorBurials =
      $grpc.ClientMethod<$8.EditorBurialsRequest, $8.EditorBurialsResponse>(
          '/v1.EditorService/EditorBurials',
          ($8.EditorBurialsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.EditorBurialsResponse.fromBuffer(value));
  static final _$editorObjects =
      $grpc.ClientMethod<$0.Empty, $8.EditorObjectsResponse>(
          '/v1.EditorService/EditorObjects',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.EditorObjectsResponse.fromBuffer(value));
  static final _$editorNewBurials = $grpc.ClientMethod<
          $8.EditorNewBurialsRequest, $8.EditorNewBurialsResponse>(
      '/v1.EditorService/EditorNewBurials',
      ($8.EditorNewBurialsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.EditorNewBurialsResponse.fromBuffer(value));
  static final _$editorNewBurial =
      $grpc.ClientMethod<$8.EditorNewBurialRequest, $8.EditorNewBurialResponse>(
          '/v1.EditorService/EditorNewBurial',
          ($8.EditorNewBurialRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.EditorNewBurialResponse.fromBuffer(value));
  static final _$editorEditNewBurial = $grpc.ClientMethod<
          $8.EditorEditNewBurialRequest, $8.EditorNewBurialResponse>(
      '/v1.EditorService/EditorEditNewBurial',
      ($8.EditorEditNewBurialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.EditorNewBurialResponse.fromBuffer(value));
  static final _$editorDeleteNewBurial = $grpc.ClientMethod<
          $8.EditorDeleteNewBurialRequest, $8.EditorNewBurialsResponse>(
      '/v1.EditorService/EditorDeleteNewBurial',
      ($8.EditorDeleteNewBurialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.EditorNewBurialsResponse.fromBuffer(value));
  static final _$editorBurialsAutocomplete = $grpc.ClientMethod<
          $8.EditorBurialsAutocompleteRequest,
          $8.EditorBurialsAutocompleteResponse>(
      '/v1.EditorService/EditorBurialsAutocomplete',
      ($8.EditorBurialsAutocompleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.EditorBurialsAutocompleteResponse.fromBuffer(value));
  static final _$editorSubsectorsAutocomplete = $grpc.ClientMethod<
          $8.EditorSubsectorsAutocompleteRequest,
          $8.EditorSubsectorsAutocompleteResponse>(
      '/v1.EditorService/EditorSubsectorsAutocomplete',
      ($8.EditorSubsectorsAutocompleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.EditorSubsectorsAutocompleteResponse.fromBuffer(value));
  static final _$editorProfile =
      $grpc.ClientMethod<$0.Empty, $8.EditorProfileResponse>(
          '/v1.EditorService/EditorProfile',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.EditorProfileResponse.fromBuffer(value));
  static final _$editorEditProfile =
      $grpc.ClientMethod<$8.EditorEditProfileRequest, $8.EditorProfileResponse>(
          '/v1.EditorService/EditorEditProfile',
          ($8.EditorEditProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.EditorProfileResponse.fromBuffer(value));
  static final _$editorDeleteFile =
      $grpc.ClientMethod<$8.EditorDeleteFileRequest, $8.EditorProfileResponse>(
          '/v1.EditorService/EditorDeleteFile',
          ($8.EditorDeleteFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.EditorProfileResponse.fromBuffer(value));
  static final _$editorCemeterySectors = $grpc.ClientMethod<
          $8.EditorCemeterySectorsRequest, $8.EditorCemeterySectorsResponse>(
      '/v1.EditorService/EditorCemeterySectors',
      ($8.EditorCemeterySectorsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.EditorCemeterySectorsResponse.fromBuffer(value));
  static final _$editorSectorSubsectors = $grpc.ClientMethod<
          $8.EditorSectorSubsectorsRequest, $8.EditorSectorSubsectorsResponse>(
      '/v1.EditorService/EditorSectorSubsectors',
      ($8.EditorSectorSubsectorsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.EditorSectorSubsectorsResponse.fromBuffer(value));

  EditorServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$8.EditorBurialsResponse> editorBurials(
      $8.EditorBurialsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorBurials, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorObjectsResponse> editorObjects($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorObjects, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorNewBurialsResponse> editorNewBurials(
      $8.EditorNewBurialsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorNewBurials, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorNewBurialResponse> editorNewBurial(
      $8.EditorNewBurialRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorNewBurial, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorNewBurialResponse> editorEditNewBurial(
      $8.EditorEditNewBurialRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorEditNewBurial, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorNewBurialsResponse> editorDeleteNewBurial(
      $8.EditorDeleteNewBurialRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorDeleteNewBurial, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorBurialsAutocompleteResponse>
      editorBurialsAutocomplete($8.EditorBurialsAutocompleteRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorBurialsAutocomplete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorSubsectorsAutocompleteResponse>
      editorSubsectorsAutocomplete(
          $8.EditorSubsectorsAutocompleteRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorSubsectorsAutocomplete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorProfileResponse> editorProfile($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorProfile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorProfileResponse> editorEditProfile(
      $8.EditorEditProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorEditProfile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorProfileResponse> editorDeleteFile(
      $8.EditorDeleteFileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorDeleteFile, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorCemeterySectorsResponse> editorCemeterySectors(
      $8.EditorCemeterySectorsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorCemeterySectors, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$8.EditorSectorSubsectorsResponse>
      editorSectorSubsectors($8.EditorSectorSubsectorsRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorSectorSubsectors, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class EditorServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.EditorService';

  EditorServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$8.EditorBurialsRequest, $8.EditorBurialsResponse>(
            'EditorBurials',
            editorBurials_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.EditorBurialsRequest.fromBuffer(value),
            ($8.EditorBurialsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $8.EditorObjectsResponse>(
        'EditorObjects',
        editorObjects_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($8.EditorObjectsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.EditorNewBurialsRequest,
            $8.EditorNewBurialsResponse>(
        'EditorNewBurials',
        editorNewBurials_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.EditorNewBurialsRequest.fromBuffer(value),
        ($8.EditorNewBurialsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.EditorNewBurialRequest,
            $8.EditorNewBurialResponse>(
        'EditorNewBurial',
        editorNewBurial_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.EditorNewBurialRequest.fromBuffer(value),
        ($8.EditorNewBurialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.EditorEditNewBurialRequest,
            $8.EditorNewBurialResponse>(
        'EditorEditNewBurial',
        editorEditNewBurial_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.EditorEditNewBurialRequest.fromBuffer(value),
        ($8.EditorNewBurialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.EditorDeleteNewBurialRequest,
            $8.EditorNewBurialsResponse>(
        'EditorDeleteNewBurial',
        editorDeleteNewBurial_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.EditorDeleteNewBurialRequest.fromBuffer(value),
        ($8.EditorNewBurialsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.EditorBurialsAutocompleteRequest,
            $8.EditorBurialsAutocompleteResponse>(
        'EditorBurialsAutocomplete',
        editorBurialsAutocomplete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.EditorBurialsAutocompleteRequest.fromBuffer(value),
        ($8.EditorBurialsAutocompleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.EditorSubsectorsAutocompleteRequest,
            $8.EditorSubsectorsAutocompleteResponse>(
        'EditorSubsectorsAutocomplete',
        editorSubsectorsAutocomplete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.EditorSubsectorsAutocompleteRequest.fromBuffer(value),
        ($8.EditorSubsectorsAutocompleteResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $8.EditorProfileResponse>(
        'EditorProfile',
        editorProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($8.EditorProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.EditorEditProfileRequest,
            $8.EditorProfileResponse>(
        'EditorEditProfile',
        editorEditProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.EditorEditProfileRequest.fromBuffer(value),
        ($8.EditorProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.EditorDeleteFileRequest,
            $8.EditorProfileResponse>(
        'EditorDeleteFile',
        editorDeleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.EditorDeleteFileRequest.fromBuffer(value),
        ($8.EditorProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.EditorCemeterySectorsRequest,
            $8.EditorCemeterySectorsResponse>(
        'EditorCemeterySectors',
        editorCemeterySectors_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.EditorCemeterySectorsRequest.fromBuffer(value),
        ($8.EditorCemeterySectorsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.EditorSectorSubsectorsRequest,
            $8.EditorSectorSubsectorsResponse>(
        'EditorSectorSubsectors',
        editorSectorSubsectors_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.EditorSectorSubsectorsRequest.fromBuffer(value),
        ($8.EditorSectorSubsectorsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.EditorBurialsResponse> editorBurials_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.EditorBurialsRequest> request) async {
    return editorBurials(call, await request);
  }

  $async.Future<$8.EditorObjectsResponse> editorObjects_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return editorObjects(call, await request);
  }

  $async.Future<$8.EditorNewBurialsResponse> editorNewBurials_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.EditorNewBurialsRequest> request) async {
    return editorNewBurials(call, await request);
  }

  $async.Future<$8.EditorNewBurialResponse> editorNewBurial_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.EditorNewBurialRequest> request) async {
    return editorNewBurial(call, await request);
  }

  $async.Future<$8.EditorNewBurialResponse> editorEditNewBurial_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.EditorEditNewBurialRequest> request) async {
    return editorEditNewBurial(call, await request);
  }

  $async.Future<$8.EditorNewBurialsResponse> editorDeleteNewBurial_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.EditorDeleteNewBurialRequest> request) async {
    return editorDeleteNewBurial(call, await request);
  }

  $async.Future<$8.EditorBurialsAutocompleteResponse>
      editorBurialsAutocomplete_Pre($grpc.ServiceCall call,
          $async.Future<$8.EditorBurialsAutocompleteRequest> request) async {
    return editorBurialsAutocomplete(call, await request);
  }

  $async.Future<$8.EditorSubsectorsAutocompleteResponse>
      editorSubsectorsAutocomplete_Pre($grpc.ServiceCall call,
          $async.Future<$8.EditorSubsectorsAutocompleteRequest> request) async {
    return editorSubsectorsAutocomplete(call, await request);
  }

  $async.Future<$8.EditorProfileResponse> editorProfile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return editorProfile(call, await request);
  }

  $async.Future<$8.EditorProfileResponse> editorEditProfile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.EditorEditProfileRequest> request) async {
    return editorEditProfile(call, await request);
  }

  $async.Future<$8.EditorProfileResponse> editorDeleteFile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.EditorDeleteFileRequest> request) async {
    return editorDeleteFile(call, await request);
  }

  $async.Future<$8.EditorCemeterySectorsResponse> editorCemeterySectors_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.EditorCemeterySectorsRequest> request) async {
    return editorCemeterySectors(call, await request);
  }

  $async.Future<$8.EditorSectorSubsectorsResponse> editorSectorSubsectors_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.EditorSectorSubsectorsRequest> request) async {
    return editorSectorSubsectors(call, await request);
  }

  $async.Future<$8.EditorBurialsResponse> editorBurials(
      $grpc.ServiceCall call, $8.EditorBurialsRequest request);
  $async.Future<$8.EditorObjectsResponse> editorObjects(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$8.EditorNewBurialsResponse> editorNewBurials(
      $grpc.ServiceCall call, $8.EditorNewBurialsRequest request);
  $async.Future<$8.EditorNewBurialResponse> editorNewBurial(
      $grpc.ServiceCall call, $8.EditorNewBurialRequest request);
  $async.Future<$8.EditorNewBurialResponse> editorEditNewBurial(
      $grpc.ServiceCall call, $8.EditorEditNewBurialRequest request);
  $async.Future<$8.EditorNewBurialsResponse> editorDeleteNewBurial(
      $grpc.ServiceCall call, $8.EditorDeleteNewBurialRequest request);
  $async.Future<$8.EditorBurialsAutocompleteResponse> editorBurialsAutocomplete(
      $grpc.ServiceCall call, $8.EditorBurialsAutocompleteRequest request);
  $async.Future<$8.EditorSubsectorsAutocompleteResponse>
      editorSubsectorsAutocomplete($grpc.ServiceCall call,
          $8.EditorSubsectorsAutocompleteRequest request);
  $async.Future<$8.EditorProfileResponse> editorProfile(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$8.EditorProfileResponse> editorEditProfile(
      $grpc.ServiceCall call, $8.EditorEditProfileRequest request);
  $async.Future<$8.EditorProfileResponse> editorDeleteFile(
      $grpc.ServiceCall call, $8.EditorDeleteFileRequest request);
  $async.Future<$8.EditorCemeterySectorsResponse> editorCemeterySectors(
      $grpc.ServiceCall call, $8.EditorCemeterySectorsRequest request);
  $async.Future<$8.EditorSectorSubsectorsResponse> editorSectorSubsectors(
      $grpc.ServiceCall call, $8.EditorSectorSubsectorsRequest request);
}
