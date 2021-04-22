///
//  Generated code. Do not modify.
//  source: order.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'order.pb.dart' as $9;
export 'order.pb.dart';

class OrderServiceClient extends $grpc.Client {
  static final _$adminOrders =
      $grpc.ClientMethod<$9.AdminOrdersRequest, $9.AdminOrdersResponse>(
          '/v1.OrderService/AdminOrders',
          ($9.AdminOrdersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.AdminOrdersResponse.fromBuffer(value));
  static final _$adminOrder =
      $grpc.ClientMethod<$9.AdminOrderRequest, $9.AdminOrderResponse>(
          '/v1.OrderService/AdminOrder',
          ($9.AdminOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.AdminOrderResponse.fromBuffer(value));
  static final _$adminEditOrder =
      $grpc.ClientMethod<$9.AdminEditOrderRequest, $9.AdminOrderResponse>(
          '/v1.OrderService/AdminEditOrder',
          ($9.AdminEditOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.AdminOrderResponse.fromBuffer(value));
  static final _$adminChangeOrderStatus = $grpc.ClientMethod<
          $9.AdminChangeOrderStatusRequest, $9.AdminOrderResponse>(
      '/v1.OrderService/AdminChangeOrderStatus',
      ($9.AdminChangeOrderStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AdminOrderResponse.fromBuffer(value));
  static final _$editorOrders =
      $grpc.ClientMethod<$9.EditorOrdersRequest, $9.EditorOrdersResponse>(
          '/v1.OrderService/EditorOrders',
          ($9.EditorOrdersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.EditorOrdersResponse.fromBuffer(value));
  static final _$editorOrder =
      $grpc.ClientMethod<$9.EditorOrderRequest, $9.EditorOrderResponse>(
          '/v1.OrderService/EditorOrder',
          ($9.EditorOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.EditorOrderResponse.fromBuffer(value));
  static final _$editorEditOrder =
      $grpc.ClientMethod<$9.EditorEditOrderRequest, $9.EditorOrderResponse>(
          '/v1.OrderService/EditorEditOrder',
          ($9.EditorEditOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.EditorOrderResponse.fromBuffer(value));
  static final _$editorChangeOrderStatus = $grpc.ClientMethod<
          $9.EditorChangeOrderStatusRequest, $9.EditorOrderResponse>(
      '/v1.OrderService/EditorChangeOrderStatus',
      ($9.EditorChangeOrderStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $9.EditorOrderResponse.fromBuffer(value));
  static final _$sellerOrders =
      $grpc.ClientMethod<$9.SellerOrdersRequest, $9.SellerOrdersResponse>(
          '/v1.OrderService/SellerOrders',
          ($9.SellerOrdersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.SellerOrdersResponse.fromBuffer(value));
  static final _$sellerOrder =
      $grpc.ClientMethod<$9.SellerOrderRequest, $9.SellerOrderResponse>(
          '/v1.OrderService/SellerOrder',
          ($9.SellerOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.SellerOrderResponse.fromBuffer(value));
  static final _$sellerEditOrder =
      $grpc.ClientMethod<$9.SellerEditOrderRequest, $9.SellerOrderResponse>(
          '/v1.OrderService/SellerEditOrder',
          ($9.SellerEditOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.SellerOrderResponse.fromBuffer(value));
  static final _$sellerChangeOrderStatus = $grpc.ClientMethod<
          $9.SellerChangeOrderStatusRequest, $9.SellerOrderResponse>(
      '/v1.OrderService/SellerChangeOrderStatus',
      ($9.SellerChangeOrderStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $9.SellerOrderResponse.fromBuffer(value));
  static final _$createNewOrder =
      $grpc.ClientMethod<$9.CreateNewOrderRequest, $9.NewOrderResponse>(
          '/v1.OrderService/CreateNewOrder',
          ($9.CreateNewOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.NewOrderResponse.fromBuffer(value));
  static final _$getNewOrder =
      $grpc.ClientMethod<$9.GetNewOrderRequest, $9.NewOrderResponse>(
          '/v1.OrderService/GetNewOrder',
          ($9.GetNewOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.NewOrderResponse.fromBuffer(value));
  static final _$historyOrders =
      $grpc.ClientMethod<$9.HistoryOrdersRequest, $9.HistoryOrdersResponse>(
          '/v1.OrderService/HistoryOrders',
          ($9.HistoryOrdersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.HistoryOrdersResponse.fromBuffer(value));

  OrderServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$9.AdminOrdersResponse> adminOrders(
      $9.AdminOrdersRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminOrders, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.AdminOrderResponse> adminOrder(
      $9.AdminOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.AdminOrderResponse> adminEditOrder(
      $9.AdminEditOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminEditOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.AdminOrderResponse> adminChangeOrderStatus(
      $9.AdminChangeOrderStatusRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$adminChangeOrderStatus, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.EditorOrdersResponse> editorOrders(
      $9.EditorOrdersRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorOrders, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.EditorOrderResponse> editorOrder(
      $9.EditorOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.EditorOrderResponse> editorEditOrder(
      $9.EditorEditOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorEditOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.EditorOrderResponse> editorChangeOrderStatus(
      $9.EditorChangeOrderStatusRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$editorChangeOrderStatus, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.SellerOrdersResponse> sellerOrders(
      $9.SellerOrdersRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerOrders, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.SellerOrderResponse> sellerOrder(
      $9.SellerOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.SellerOrderResponse> sellerEditOrder(
      $9.SellerEditOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerEditOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.SellerOrderResponse> sellerChangeOrderStatus(
      $9.SellerChangeOrderStatusRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sellerChangeOrderStatus, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.NewOrderResponse> createNewOrder(
      $9.CreateNewOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createNewOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.NewOrderResponse> getNewOrder(
      $9.GetNewOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getNewOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$9.HistoryOrdersResponse> historyOrders(
      $9.HistoryOrdersRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$historyOrders, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class OrderServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.OrderService';

  OrderServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$9.AdminOrdersRequest, $9.AdminOrdersResponse>(
            'AdminOrders',
            adminOrders_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.AdminOrdersRequest.fromBuffer(value),
            ($9.AdminOrdersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AdminOrderRequest, $9.AdminOrderResponse>(
        'AdminOrder',
        adminOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AdminOrderRequest.fromBuffer(value),
        ($9.AdminOrderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.AdminEditOrderRequest, $9.AdminOrderResponse>(
            'AdminEditOrder',
            adminEditOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.AdminEditOrderRequest.fromBuffer(value),
            ($9.AdminOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AdminChangeOrderStatusRequest,
            $9.AdminOrderResponse>(
        'AdminChangeOrderStatus',
        adminChangeOrderStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.AdminChangeOrderStatusRequest.fromBuffer(value),
        ($9.AdminOrderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.EditorOrdersRequest, $9.EditorOrdersResponse>(
            'EditorOrders',
            editorOrders_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.EditorOrdersRequest.fromBuffer(value),
            ($9.EditorOrdersResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.EditorOrderRequest, $9.EditorOrderResponse>(
            'EditorOrder',
            editorOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.EditorOrderRequest.fromBuffer(value),
            ($9.EditorOrderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.EditorEditOrderRequest, $9.EditorOrderResponse>(
            'EditorEditOrder',
            editorEditOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.EditorEditOrderRequest.fromBuffer(value),
            ($9.EditorOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.EditorChangeOrderStatusRequest,
            $9.EditorOrderResponse>(
        'EditorChangeOrderStatus',
        editorChangeOrderStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.EditorChangeOrderStatusRequest.fromBuffer(value),
        ($9.EditorOrderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.SellerOrdersRequest, $9.SellerOrdersResponse>(
            'SellerOrders',
            sellerOrders_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.SellerOrdersRequest.fromBuffer(value),
            ($9.SellerOrdersResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.SellerOrderRequest, $9.SellerOrderResponse>(
            'SellerOrder',
            sellerOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.SellerOrderRequest.fromBuffer(value),
            ($9.SellerOrderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.SellerEditOrderRequest, $9.SellerOrderResponse>(
            'SellerEditOrder',
            sellerEditOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.SellerEditOrderRequest.fromBuffer(value),
            ($9.SellerOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.SellerChangeOrderStatusRequest,
            $9.SellerOrderResponse>(
        'SellerChangeOrderStatus',
        sellerChangeOrderStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.SellerChangeOrderStatusRequest.fromBuffer(value),
        ($9.SellerOrderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.CreateNewOrderRequest, $9.NewOrderResponse>(
            'CreateNewOrder',
            createNewOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.CreateNewOrderRequest.fromBuffer(value),
            ($9.NewOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetNewOrderRequest, $9.NewOrderResponse>(
        'GetNewOrder',
        getNewOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.GetNewOrderRequest.fromBuffer(value),
        ($9.NewOrderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.HistoryOrdersRequest, $9.HistoryOrdersResponse>(
            'HistoryOrders',
            historyOrders_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.HistoryOrdersRequest.fromBuffer(value),
            ($9.HistoryOrdersResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.AdminOrdersResponse> adminOrders_Pre($grpc.ServiceCall call,
      $async.Future<$9.AdminOrdersRequest> request) async {
    return adminOrders(call, await request);
  }

  $async.Future<$9.AdminOrderResponse> adminOrder_Pre($grpc.ServiceCall call,
      $async.Future<$9.AdminOrderRequest> request) async {
    return adminOrder(call, await request);
  }

  $async.Future<$9.AdminOrderResponse> adminEditOrder_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.AdminEditOrderRequest> request) async {
    return adminEditOrder(call, await request);
  }

  $async.Future<$9.AdminOrderResponse> adminChangeOrderStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.AdminChangeOrderStatusRequest> request) async {
    return adminChangeOrderStatus(call, await request);
  }

  $async.Future<$9.EditorOrdersResponse> editorOrders_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.EditorOrdersRequest> request) async {
    return editorOrders(call, await request);
  }

  $async.Future<$9.EditorOrderResponse> editorOrder_Pre($grpc.ServiceCall call,
      $async.Future<$9.EditorOrderRequest> request) async {
    return editorOrder(call, await request);
  }

  $async.Future<$9.EditorOrderResponse> editorEditOrder_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.EditorEditOrderRequest> request) async {
    return editorEditOrder(call, await request);
  }

  $async.Future<$9.EditorOrderResponse> editorChangeOrderStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.EditorChangeOrderStatusRequest> request) async {
    return editorChangeOrderStatus(call, await request);
  }

  $async.Future<$9.SellerOrdersResponse> sellerOrders_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.SellerOrdersRequest> request) async {
    return sellerOrders(call, await request);
  }

  $async.Future<$9.SellerOrderResponse> sellerOrder_Pre($grpc.ServiceCall call,
      $async.Future<$9.SellerOrderRequest> request) async {
    return sellerOrder(call, await request);
  }

  $async.Future<$9.SellerOrderResponse> sellerEditOrder_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.SellerEditOrderRequest> request) async {
    return sellerEditOrder(call, await request);
  }

  $async.Future<$9.SellerOrderResponse> sellerChangeOrderStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.SellerChangeOrderStatusRequest> request) async {
    return sellerChangeOrderStatus(call, await request);
  }

  $async.Future<$9.NewOrderResponse> createNewOrder_Pre($grpc.ServiceCall call,
      $async.Future<$9.CreateNewOrderRequest> request) async {
    return createNewOrder(call, await request);
  }

  $async.Future<$9.NewOrderResponse> getNewOrder_Pre($grpc.ServiceCall call,
      $async.Future<$9.GetNewOrderRequest> request) async {
    return getNewOrder(call, await request);
  }

  $async.Future<$9.HistoryOrdersResponse> historyOrders_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.HistoryOrdersRequest> request) async {
    return historyOrders(call, await request);
  }

  $async.Future<$9.AdminOrdersResponse> adminOrders(
      $grpc.ServiceCall call, $9.AdminOrdersRequest request);
  $async.Future<$9.AdminOrderResponse> adminOrder(
      $grpc.ServiceCall call, $9.AdminOrderRequest request);
  $async.Future<$9.AdminOrderResponse> adminEditOrder(
      $grpc.ServiceCall call, $9.AdminEditOrderRequest request);
  $async.Future<$9.AdminOrderResponse> adminChangeOrderStatus(
      $grpc.ServiceCall call, $9.AdminChangeOrderStatusRequest request);
  $async.Future<$9.EditorOrdersResponse> editorOrders(
      $grpc.ServiceCall call, $9.EditorOrdersRequest request);
  $async.Future<$9.EditorOrderResponse> editorOrder(
      $grpc.ServiceCall call, $9.EditorOrderRequest request);
  $async.Future<$9.EditorOrderResponse> editorEditOrder(
      $grpc.ServiceCall call, $9.EditorEditOrderRequest request);
  $async.Future<$9.EditorOrderResponse> editorChangeOrderStatus(
      $grpc.ServiceCall call, $9.EditorChangeOrderStatusRequest request);
  $async.Future<$9.SellerOrdersResponse> sellerOrders(
      $grpc.ServiceCall call, $9.SellerOrdersRequest request);
  $async.Future<$9.SellerOrderResponse> sellerOrder(
      $grpc.ServiceCall call, $9.SellerOrderRequest request);
  $async.Future<$9.SellerOrderResponse> sellerEditOrder(
      $grpc.ServiceCall call, $9.SellerEditOrderRequest request);
  $async.Future<$9.SellerOrderResponse> sellerChangeOrderStatus(
      $grpc.ServiceCall call, $9.SellerChangeOrderStatusRequest request);
  $async.Future<$9.NewOrderResponse> createNewOrder(
      $grpc.ServiceCall call, $9.CreateNewOrderRequest request);
  $async.Future<$9.NewOrderResponse> getNewOrder(
      $grpc.ServiceCall call, $9.GetNewOrderRequest request);
  $async.Future<$9.HistoryOrdersResponse> historyOrders(
      $grpc.ServiceCall call, $9.HistoryOrdersRequest request);
}
