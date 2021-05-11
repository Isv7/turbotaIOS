import 'package:app/api/v1/burial.pb.dart';
import 'package:app/blocs/app/AppBloc.dart';
import 'package:app/blocs/content/Bloc.dart';
import 'package:app/repositories/ContentGrpcRepository.dart';
import 'package:app/api/v1/region.pbgrpc.dart' as regionGrpc;
import 'package:app/api/v1/burial.pbgrpc.dart' as burialGrpc;
import 'package:app/api/v1/service.pbgrpc.dart' as serviceGrpc;
import 'package:app/api/v1/order.pbgrpc.dart' as orderGrpc;
import 'package:app/api/v1/item.pbgrpc.dart' as itemGrpc;
import 'package:app/services/navigation.dart';

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ContentBloc extends Bloc<ContentEvent, ContentState> {
  final AppBloc appBloc;
  final ContentGrpcRepository contentGrpcRepository;

  final NavigationServiceSingleton _navigationService =
      NavigationServiceSingleton();

  ContentBloc({
    @required this.appBloc,
    @required this.contentGrpcRepository,
  })  : assert(appBloc != null),
        super(null);

  @override
  Stream<ContentState> mapEventToState(
    ContentEvent event,
  ) async* {
    if (event is ChangeLanguageEvent) {
      yield* mapChangeLanguageToState(event.locale);
    } else if (event is GetObjectsEvent) {
      yield* mapGetObjectsToState();
    } else if (event is ContentSearchEvent) {
      yield* mapSearchToState(event.name, event.surname, event.patronymic,
          event.year, event.cemeteryID);
    } else if (event is BurialRouteEvent) {
      yield* mapBurialRouteToState(event.id);
    } else if (event is LocationRouteEvent) {
      yield* mapLocationRouteToState(event.id);
    } else if (event is CreateOrderEvent) {
      yield* mapCreateOrderToState(
          event.burial,
          event.date,
          event.name,
          event.surname,
          event.services,
          event.items,
          event.phone,
          event.email,
          event.comment,
          event.amount,
          event.orderId,
          event.paymentId);
    } else if (event is CheckOrderStatusEvent) {
      yield* mapCheckOrderStatusToState(event.burial, event.orderId);
    } else if (event is CleaningRouteEvent) {
      yield* mapCleaningRouteToState(event.burial);
    } else if (event is PhotoRouteEvent) {
      yield* mapPhotoRouteToState(event.burial);
    } else if (event is ServicesRouteEvent) {
      yield* mapServicesRouteToState(event.burial);
    } else if (event is HistoryRouteEvent) {
      yield* mapHistoryOrdersRouteToState();
    } else if (event is RepeatOrderEvent) {
      yield* mapRepeatOrderRouteToState(event.order);
    } else if (event is ClearErrorEvent) {
      yield ContentWithoutErrorState();
    } else if (event is ItemsRouteEvent) {
      yield* mapItemsRouteToState(event.cityId);
    }
  }

  Stream<ContentState> mapChangeLanguageToState(Locale locale) async* {
    yield ContentLoadingState();
    this.appBloc.storageRepository.saveLanguage(locale.languageCode);
    yield ChangeLanguageState(locale: locale);
  }

  Stream<ContentState> mapGetObjectsToState() async* {
    try {
      regionGrpc.RegionsResponse response =
          await contentGrpcRepository.objects();
      yield ContentObjectsState(objects: response.regions);
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }

  Stream<ContentState> mapSearchToState(String name, String surname,
      String patronymic, String year, int cemeteryID) async* {
    try {
      yield ContentLoadingState();
      burialGrpc.BurialsResponse response = await contentGrpcRepository
          .burialSearch(name, surname, patronymic, year, cemeteryID);
      _navigationService.navigateTo(AppRouter.Burials,
          arguments: {"burials": response.burials});
      yield BurialsResultsState(burials: response.burials);
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }

  Stream<ContentState> mapBurialRouteToState(int id) async* {
    try {
      yield ContentLoadingState();
      burialGrpc.BurialResponse response =
          await contentGrpcRepository.burial(id);
      _navigationService
          .navigateTo(AppRouter.Burial, arguments: {"burial": response.burial});
      yield BurialRouteState();
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }

  Stream<ContentState> mapLocationRouteToState(int id) async* {
    try {
      yield ContentLoadingState();
      burialGrpc.BurialResponse response =
          await contentGrpcRepository.burial(id);
      _navigationService.navigateTo(AppRouter.Location,
          arguments: {"burial": response.burial});
      yield LocationRouteState();
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }

  Stream<ContentState> mapCleaningRouteToState(
      burialGrpc.Burial burial) async* {
    try {
      yield ContentLoadingState();
      burialGrpc.BurialResponse burialResponse =
          await contentGrpcRepository.burial(burial.id);
      serviceGrpc.ServicesListResponse response = await contentGrpcRepository
          .servicesList(burial.subsector.sector.cemetery.id);

      _navigationService.navigateTo(AppRouter.Cleaning, arguments: {
        "burial": burialResponse.burial,
        "services": response.services ?? []
      });
      yield CleaningRouteState();
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }

  Stream<ContentState> mapPhotoRouteToState(burialGrpc.Burial burial) async* {
    try {
      yield ContentLoadingState();
      burialGrpc.BurialResponse burialResponse =
          await contentGrpcRepository.burial(burial.id);
      serviceGrpc.ServicesListResponse response = await contentGrpcRepository
          .servicesList(burial.subsector.sector.cemetery.id);
      for (var i = 0; i < response.services.length; i++) {
        if (response.services[i].type != 2) {
          response.services[i].selected = false;
        }
      }
      _navigationService.navigateTo(AppRouter.MediaOrder, arguments: {
        "burial": burialResponse.burial,
        "services": response.services ?? []
      });
      yield CleaningRouteState();
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }

  Stream<ContentState> mapServicesRouteToState(
      burialGrpc.Burial burial) async* {
    try {
      yield ContentLoadingState();
      burialGrpc.BurialResponse burialResponse =
          await contentGrpcRepository.burial(burial.id);
      serviceGrpc.ServicesListResponse response = await contentGrpcRepository
          .servicesList(burial.subsector.sector.cemetery.id);

      _navigationService.navigateTo(AppRouter.Services, arguments: {
        "burial": burialResponse.burial,
        "services": response.services ?? []
      });
      yield ServicesRouteState();
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }

  Stream<ContentState> mapCreateOrderToState(
      Burial burial,
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
      String paymentId) async* {
    try {
      orderGrpc.NewOrderResponse response =
          await contentGrpcRepository.createOrder(
              burial != null ? burial.id : 0,
              date,
              name,
              surname,
              services,
              items,
              phone,
              email,
              comment,
              amount,
              orderId,
              paymentId);
      yield ContentWithoutErrorState();
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }

  Stream<ContentState> mapCheckOrderStatusToState(
      Burial burial, String orderId) async* {
    try {
      orderGrpc.NewOrderResponse response =
          await contentGrpcRepository.getNewOrder(orderId);
      if (response.order.paymentId != "") {
        _navigationService.replaceWith(AppRouter.OrderSuccess,
            arguments: {"burial": burial, "order": response.order});
      }
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }

  Stream<ContentState> mapHistoryOrdersRouteToState() async* {
    try {
      yield ContentLoadingState();
      orderGrpc.HistoryOrdersResponse response =
          await contentGrpcRepository.historyOrders(0, 1000);

      _navigationService.navigateTo(AppRouter.HistoryOrders,
          arguments: {"orders": response.orders, "total": response.total});
      yield HistoryOrdersRouteState();
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }

  Stream<ContentState> mapRepeatOrderRouteToState(
      orderGrpc.HistoryOrder order) async* {
    try {
      yield ContentLoadingState();
      serviceGrpc.ServicesListResponse response = await contentGrpcRepository
          .servicesList(order.burial.subsector.sector.cemetery.id);

      _navigationService.navigateTo(AppRouter.Services, arguments: {
        "burial": order.burial,
        "services": response.services ?? [],
        "prevOrder": order
      });
      yield ServicesRouteState();
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }

  Stream<ContentState> mapItemsRouteToState(int cityId) async* {
    try {
      yield ContentLoadingState();
      itemGrpc.ItemsResponse response =
          await contentGrpcRepository.items(0, 100, cityId);

      _navigationService.navigateTo(AppRouter.Items,
          arguments: {"items": response.items, "total": response.total});
      yield ItemsRouteState();
    } catch (err) {
      print(err);
      yield ContentErrorState(code: "error", message: err.message);
    }
  }
}
