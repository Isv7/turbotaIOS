import 'package:app/api/v1/region.pbgrpc.dart' as regionGrpc;
import 'package:app/api/v1/burial.pbgrpc.dart' as burialGrpc;
import 'package:app/api/v1/service.pbgrpc.dart' as serviceGrpc;
import 'package:app/api/v1/order.pbgrpc.dart' as orderGrpc;
import 'package:app/api/v1/item.pbgrpc.dart' as itemGrpc;
import 'package:app/providers/GRPC.dart';
import 'package:app/api/v1/google/protobuf/empty.pb.dart';

class ContentGrpcRepository {
  Future<regionGrpc.RegionsResponse> objects() async {
    regionGrpc.RegionsResponse response = await regionGrpc.RegionServiceClient(
            GrpcClientSingleton().client,
            options: GrpcClientSingleton.options())
        .objects(Empty());
    return response;
  }

  Future<burialGrpc.BurialsResponse> burialSearch(String name, String surname,
      String patronymic, String year, int cemeteryID) async {
    burialGrpc.BurialSearchRequest request = burialGrpc.BurialSearchRequest()
      ..name = name
      ..surname = surname
      ..patronymic = patronymic
      ..year = year
      ..cemeteryId = cemeteryID;
    burialGrpc.BurialsResponse response = await burialGrpc.BurialServiceClient(
            GrpcClientSingleton().client,
            options: GrpcClientSingleton.options())
        .burialSearch(request);
    return response;
  }

  Future<serviceGrpc.ServicesListResponse> cleaningServicesList(
      int cemeteryID) async {
    serviceGrpc.ServicesListRequest request = serviceGrpc.ServicesListRequest()
      ..cemeteryId = cemeteryID;
    serviceGrpc.ServicesListResponse response =
        await serviceGrpc.ServiceServiceClient(GrpcClientSingleton().client,
                options: GrpcClientSingleton.options())
            .cleaningServicesList(request);
    return response;
  }

  Future<serviceGrpc.ServicesListResponse> photoServicesList(
      int cemeteryID) async {
    serviceGrpc.ServicesListRequest request = serviceGrpc.ServicesListRequest()
      ..cemeteryId = cemeteryID;
    serviceGrpc.ServicesListResponse response =
        await serviceGrpc.ServiceServiceClient(GrpcClientSingleton().client,
                options: GrpcClientSingleton.options())
            .photoServicesList(request);
    return response;
  }

  Future<serviceGrpc.ServicesListResponse> servicesList(int cemeteryID) async {
    serviceGrpc.ServicesListRequest request = serviceGrpc.ServicesListRequest()
      ..cemeteryId = cemeteryID;
    serviceGrpc.ServicesListResponse response =
        await serviceGrpc.ServiceServiceClient(GrpcClientSingleton().client,
                options: GrpcClientSingleton.options())
            .servicesList(request);
    return response;
  }

  Future<orderGrpc.NewOrderResponse> createOrder(
      int burialId,
      String date,
      String name,
      String surname,
      List<int> services,
      List<int> items,
      String phone,
      String email,
      String comment,
      double amount,
      String orderId,
      String paymentId) async {
    orderGrpc.CreateNewOrderRequest request = orderGrpc.CreateNewOrderRequest()
      ..burialId = burialId
      ..date = date
      ..name = name
      ..surname = surname
      ..services.addAll(services)
      ..items.addAll(items)
      ..phone = phone
      ..email = email
      ..comment = comment
      ..amount = amount
      ..orderId = orderId
      ..paymentId = paymentId;
    orderGrpc.NewOrderResponse response = await orderGrpc.OrderServiceClient(
            GrpcClientSingleton().client,
            options: GrpcClientSingleton.options())
        .createNewOrder(request);
    return response;
  }

  Future<orderGrpc.NewOrderResponse> getNewOrder(String orderId) async {
    orderGrpc.GetNewOrderRequest request = orderGrpc.GetNewOrderRequest()
      ..orderId = orderId;
    orderGrpc.NewOrderResponse response = await orderGrpc.OrderServiceClient(
            GrpcClientSingleton().client,
            options: GrpcClientSingleton.options())
        .getNewOrder(request);
    return response;
  }

  Future<orderGrpc.HistoryOrdersResponse> historyOrders(
      int page, int pageSize) async {
    orderGrpc.HistoryOrdersRequest request = orderGrpc.HistoryOrdersRequest()
      ..page = page
      ..pageSize = pageSize;
    orderGrpc.HistoryOrdersResponse response =
        await orderGrpc.OrderServiceClient(GrpcClientSingleton().client,
                options: GrpcClientSingleton.options())
            .historyOrders(request);
    return response;
  }

  Future<itemGrpc.ItemsResponse> items(
      int page, int pageSize, int cityId) async {
    itemGrpc.ItemsRequest request = itemGrpc.ItemsRequest()
      ..page = page
      ..pageSize = pageSize
      ..cityId = cityId;
    itemGrpc.ItemsResponse response = await itemGrpc.ItemServiceClient(
            GrpcClientSingleton().client,
            options: GrpcClientSingleton.options())
        .items(request);
    return response;
  }
}
