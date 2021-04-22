///
//  Generated code. Do not modify.
//  source: item.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'item.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $1;
export 'item.pb.dart';

class ItemServiceClient extends $grpc.Client {
  static final _$adminItems =
      $grpc.ClientMethod<$0.AdminItemsRequest, $0.AdminItemsResponse>(
          '/v1.ItemService/AdminItems',
          ($0.AdminItemsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminItemsResponse.fromBuffer(value));
  static final _$adminItem =
      $grpc.ClientMethod<$0.AdminItemRequest, $0.AdminItemResponse>(
          '/v1.ItemService/AdminItem',
          ($0.AdminItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminItemResponse.fromBuffer(value));
  static final _$adminEditItem =
      $grpc.ClientMethod<$0.AdminEditItemRequest, $0.AdminItemResponse>(
          '/v1.ItemService/AdminEditItem',
          ($0.AdminEditItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminItemResponse.fromBuffer(value));
  static final _$adminDeleteItem =
      $grpc.ClientMethod<$0.AdminDeleteItemRequest, $0.AdminItemsResponse>(
          '/v1.ItemService/AdminDeleteItem',
          ($0.AdminDeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminItemsResponse.fromBuffer(value));
  static final _$adminGetUploadImages =
      $grpc.ClientMethod<$1.Empty, $0.ImagesResponse>(
          '/v1.ItemService/AdminGetUploadImages',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ImagesResponse.fromBuffer(value));
  static final _$editorItems =
      $grpc.ClientMethod<$0.EditorItemsRequest, $0.EditorItemsResponse>(
          '/v1.ItemService/EditorItems',
          ($0.EditorItemsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EditorItemsResponse.fromBuffer(value));
  static final _$editorItem =
      $grpc.ClientMethod<$0.EditorItemRequest, $0.EditorItemResponse>(
          '/v1.ItemService/EditorItem',
          ($0.EditorItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EditorItemResponse.fromBuffer(value));
  static final _$editorEditItem =
      $grpc.ClientMethod<$0.EditorEditItemRequest, $0.EditorItemResponse>(
          '/v1.ItemService/EditorEditItem',
          ($0.EditorEditItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EditorItemResponse.fromBuffer(value));
  static final _$editorDeleteItem =
      $grpc.ClientMethod<$0.EditorDeleteItemRequest, $0.EditorItemsResponse>(
          '/v1.ItemService/EditorDeleteItem',
          ($0.EditorDeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EditorItemsResponse.fromBuffer(value));
  static final _$editorGetUploadImages =
      $grpc.ClientMethod<$1.Empty, $0.ImagesResponse>(
          '/v1.ItemService/EditorGetUploadImages',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ImagesResponse.fromBuffer(value));
  static final _$sellerItems =
      $grpc.ClientMethod<$0.SellerItemsRequest, $0.SellerItemsResponse>(
          '/v1.ItemService/SellerItems',
          ($0.SellerItemsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SellerItemsResponse.fromBuffer(value));
  static final _$sellerItem =
      $grpc.ClientMethod<$0.SellerItemRequest, $0.SellerItemResponse>(
          '/v1.ItemService/SellerItem',
          ($0.SellerItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SellerItemResponse.fromBuffer(value));
  static final _$sellerEditItem =
      $grpc.ClientMethod<$0.SellerEditItemRequest, $0.SellerItemResponse>(
          '/v1.ItemService/SellerEditItem',
          ($0.SellerEditItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SellerItemResponse.fromBuffer(value));
  static final _$sellerDeleteItem =
      $grpc.ClientMethod<$0.SellerDeleteItemRequest, $0.SellerItemsResponse>(
          '/v1.ItemService/SellerDeleteItem',
          ($0.SellerDeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SellerItemsResponse.fromBuffer(value));
  static final _$sellerGetUploadImages =
      $grpc.ClientMethod<$1.Empty, $0.ImagesResponse>(
          '/v1.ItemService/SellerGetUploadImages',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ImagesResponse.fromBuffer(value));
  static final _$items = $grpc.ClientMethod<$0.ItemsRequest, $0.ItemsResponse>(
      '/v1.ItemService/Items',
      ($0.ItemsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ItemsResponse.fromBuffer(value));
  static final _$item = $grpc.ClientMethod<$0.ItemRequest, $0.ItemResponse>(
      '/v1.ItemService/Item',
      ($0.ItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ItemResponse.fromBuffer(value));

  ItemServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.AdminItemsResponse> adminItems(
      $0.AdminItemsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminItems, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AdminItemResponse> adminItem(
      $0.AdminItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$adminItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AdminItemResponse> adminEditItem(
      $0.AdminEditItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminEditItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AdminItemsResponse> adminDeleteItem(
      $0.AdminDeleteItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminDeleteItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ImagesResponse> adminGetUploadImages($1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminGetUploadImages, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorItemsResponse> editorItems(
      $0.EditorItemsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorItems, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorItemResponse> editorItem(
      $0.EditorItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorItemResponse> editorEditItem(
      $0.EditorEditItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorEditItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EditorItemsResponse> editorDeleteItem(
      $0.EditorDeleteItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorDeleteItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ImagesResponse> editorGetUploadImages(
      $1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorGetUploadImages, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SellerItemsResponse> sellerItems(
      $0.SellerItemsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerItems, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SellerItemResponse> sellerItem(
      $0.SellerItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SellerItemResponse> sellerEditItem(
      $0.SellerEditItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerEditItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SellerItemsResponse> sellerDeleteItem(
      $0.SellerDeleteItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerDeleteItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ImagesResponse> sellerGetUploadImages(
      $1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerGetUploadImages, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ItemsResponse> items($0.ItemsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$items, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ItemResponse> item($0.ItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$item, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ItemServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.ItemService';

  ItemServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AdminItemsRequest, $0.AdminItemsResponse>(
        'AdminItems',
        adminItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AdminItemsRequest.fromBuffer(value),
        ($0.AdminItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AdminItemRequest, $0.AdminItemResponse>(
        'AdminItem',
        adminItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AdminItemRequest.fromBuffer(value),
        ($0.AdminItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AdminEditItemRequest, $0.AdminItemResponse>(
            'AdminEditItem',
            adminEditItem_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AdminEditItemRequest.fromBuffer(value),
            ($0.AdminItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AdminDeleteItemRequest, $0.AdminItemsResponse>(
            'AdminDeleteItem',
            adminDeleteItem_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AdminDeleteItemRequest.fromBuffer(value),
            ($0.AdminItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.ImagesResponse>(
        'AdminGetUploadImages',
        adminGetUploadImages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.ImagesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.EditorItemsRequest, $0.EditorItemsResponse>(
            'EditorItems',
            editorItems_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.EditorItemsRequest.fromBuffer(value),
            ($0.EditorItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditorItemRequest, $0.EditorItemResponse>(
        'EditorItem',
        editorItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditorItemRequest.fromBuffer(value),
        ($0.EditorItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.EditorEditItemRequest, $0.EditorItemResponse>(
            'EditorEditItem',
            editorEditItem_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.EditorEditItemRequest.fromBuffer(value),
            ($0.EditorItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.EditorDeleteItemRequest, $0.EditorItemsResponse>(
            'EditorDeleteItem',
            editorDeleteItem_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.EditorDeleteItemRequest.fromBuffer(value),
            ($0.EditorItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.ImagesResponse>(
        'EditorGetUploadImages',
        editorGetUploadImages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.ImagesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SellerItemsRequest, $0.SellerItemsResponse>(
            'SellerItems',
            sellerItems_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SellerItemsRequest.fromBuffer(value),
            ($0.SellerItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SellerItemRequest, $0.SellerItemResponse>(
        'SellerItem',
        sellerItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SellerItemRequest.fromBuffer(value),
        ($0.SellerItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SellerEditItemRequest, $0.SellerItemResponse>(
            'SellerEditItem',
            sellerEditItem_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SellerEditItemRequest.fromBuffer(value),
            ($0.SellerItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SellerDeleteItemRequest, $0.SellerItemsResponse>(
            'SellerDeleteItem',
            sellerDeleteItem_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SellerDeleteItemRequest.fromBuffer(value),
            ($0.SellerItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.ImagesResponse>(
        'SellerGetUploadImages',
        sellerGetUploadImages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.ImagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ItemsRequest, $0.ItemsResponse>(
        'Items',
        items_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ItemsRequest.fromBuffer(value),
        ($0.ItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ItemRequest, $0.ItemResponse>(
        'Item',
        item_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ItemRequest.fromBuffer(value),
        ($0.ItemResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AdminItemsResponse> adminItems_Pre($grpc.ServiceCall call,
      $async.Future<$0.AdminItemsRequest> request) async {
    return adminItems(call, await request);
  }

  $async.Future<$0.AdminItemResponse> adminItem_Pre($grpc.ServiceCall call,
      $async.Future<$0.AdminItemRequest> request) async {
    return adminItem(call, await request);
  }

  $async.Future<$0.AdminItemResponse> adminEditItem_Pre($grpc.ServiceCall call,
      $async.Future<$0.AdminEditItemRequest> request) async {
    return adminEditItem(call, await request);
  }

  $async.Future<$0.AdminItemsResponse> adminDeleteItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AdminDeleteItemRequest> request) async {
    return adminDeleteItem(call, await request);
  }

  $async.Future<$0.ImagesResponse> adminGetUploadImages_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return adminGetUploadImages(call, await request);
  }

  $async.Future<$0.EditorItemsResponse> editorItems_Pre($grpc.ServiceCall call,
      $async.Future<$0.EditorItemsRequest> request) async {
    return editorItems(call, await request);
  }

  $async.Future<$0.EditorItemResponse> editorItem_Pre($grpc.ServiceCall call,
      $async.Future<$0.EditorItemRequest> request) async {
    return editorItem(call, await request);
  }

  $async.Future<$0.EditorItemResponse> editorEditItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorEditItemRequest> request) async {
    return editorEditItem(call, await request);
  }

  $async.Future<$0.EditorItemsResponse> editorDeleteItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.EditorDeleteItemRequest> request) async {
    return editorDeleteItem(call, await request);
  }

  $async.Future<$0.ImagesResponse> editorGetUploadImages_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return editorGetUploadImages(call, await request);
  }

  $async.Future<$0.SellerItemsResponse> sellerItems_Pre($grpc.ServiceCall call,
      $async.Future<$0.SellerItemsRequest> request) async {
    return sellerItems(call, await request);
  }

  $async.Future<$0.SellerItemResponse> sellerItem_Pre($grpc.ServiceCall call,
      $async.Future<$0.SellerItemRequest> request) async {
    return sellerItem(call, await request);
  }

  $async.Future<$0.SellerItemResponse> sellerEditItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SellerEditItemRequest> request) async {
    return sellerEditItem(call, await request);
  }

  $async.Future<$0.SellerItemsResponse> sellerDeleteItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SellerDeleteItemRequest> request) async {
    return sellerDeleteItem(call, await request);
  }

  $async.Future<$0.ImagesResponse> sellerGetUploadImages_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return sellerGetUploadImages(call, await request);
  }

  $async.Future<$0.ItemsResponse> items_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ItemsRequest> request) async {
    return items(call, await request);
  }

  $async.Future<$0.ItemResponse> item_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ItemRequest> request) async {
    return item(call, await request);
  }

  $async.Future<$0.AdminItemsResponse> adminItems(
      $grpc.ServiceCall call, $0.AdminItemsRequest request);
  $async.Future<$0.AdminItemResponse> adminItem(
      $grpc.ServiceCall call, $0.AdminItemRequest request);
  $async.Future<$0.AdminItemResponse> adminEditItem(
      $grpc.ServiceCall call, $0.AdminEditItemRequest request);
  $async.Future<$0.AdminItemsResponse> adminDeleteItem(
      $grpc.ServiceCall call, $0.AdminDeleteItemRequest request);
  $async.Future<$0.ImagesResponse> adminGetUploadImages(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.EditorItemsResponse> editorItems(
      $grpc.ServiceCall call, $0.EditorItemsRequest request);
  $async.Future<$0.EditorItemResponse> editorItem(
      $grpc.ServiceCall call, $0.EditorItemRequest request);
  $async.Future<$0.EditorItemResponse> editorEditItem(
      $grpc.ServiceCall call, $0.EditorEditItemRequest request);
  $async.Future<$0.EditorItemsResponse> editorDeleteItem(
      $grpc.ServiceCall call, $0.EditorDeleteItemRequest request);
  $async.Future<$0.ImagesResponse> editorGetUploadImages(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.SellerItemsResponse> sellerItems(
      $grpc.ServiceCall call, $0.SellerItemsRequest request);
  $async.Future<$0.SellerItemResponse> sellerItem(
      $grpc.ServiceCall call, $0.SellerItemRequest request);
  $async.Future<$0.SellerItemResponse> sellerEditItem(
      $grpc.ServiceCall call, $0.SellerEditItemRequest request);
  $async.Future<$0.SellerItemsResponse> sellerDeleteItem(
      $grpc.ServiceCall call, $0.SellerDeleteItemRequest request);
  $async.Future<$0.ImagesResponse> sellerGetUploadImages(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.ItemsResponse> items(
      $grpc.ServiceCall call, $0.ItemsRequest request);
  $async.Future<$0.ItemResponse> item(
      $grpc.ServiceCall call, $0.ItemRequest request);
}
