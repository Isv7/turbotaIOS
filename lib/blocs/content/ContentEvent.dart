import 'package:app/api/v1/burial.pb.dart';
import 'package:app/api/v1/order.pb.dart';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

abstract class ContentEvent extends Equatable {
  const ContentEvent();

  @override
  List<Object> get props => [];
}

class ChangeLanguageEvent extends ContentEvent {
  final Locale locale;

  ChangeLanguageEvent({
    @required this.locale,
  });
  @override
  String toString() => 'Change language event';
}

class ContentSearchEvent extends ContentEvent {
  final String name;
  final String surname;
  final String patronymic;
  final String year;
  final int cemeteryID;

  ContentSearchEvent(
      {@required this.name,
      @required this.surname,
      @required this.patronymic,
      @required this.year,
      @required this.cemeteryID});
  @override
  String toString() => 'Content search event';
}

class BurialRouteEvent extends ContentEvent {
  final int id;

  BurialRouteEvent({@required this.id});
  @override
  String toString() => 'Burial route event';
}

class LocationRouteEvent extends ContentEvent {
  final int id;

  LocationRouteEvent({@required this.id});
  @override
  String toString() => 'Location route event';
}

class GetObjectsEvent extends ContentEvent {
  @override
  String toString() => 'Get objects event';
}

class CleaningRouteEvent extends ContentEvent {
  final Burial burial;

  CleaningRouteEvent({
    @required this.burial,
  });
  @override
  String toString() => 'Cleaning route event';
}

class PhotoRouteEvent extends ContentEvent {
  final Burial burial;

  PhotoRouteEvent({
    @required this.burial,
  });
  @override
  String toString() => 'Photo route event';
}

class ServicesRouteEvent extends ContentEvent {
  final Burial burial;

  ServicesRouteEvent({
    @required this.burial,
  });
  @override
  String toString() => 'Services route event';
}

class CreateOrderEvent extends ContentEvent {
  final Burial burial;
  final String date;
  final String name;
  final String surname;
  final List<int> services;
  final List<int> items;
  final String phone;
  final String email;
  final String comment;
  final double amount;
  final String orderId;
  final String paymentId;

  CreateOrderEvent({
    @required this.burial,
    @required this.date,
    @required this.name,
    @required this.surname,
    @required this.services,
    @required this.items,
    @required this.phone,
    @required this.email,
    @required this.comment,
    @required this.amount,
    @required this.orderId,
    @required this.paymentId,
  });
  @override
  String toString() => 'Create order event';
}

class CheckOrderStatusEvent extends ContentEvent {
  final Burial burial;
  final String orderId;

  CheckOrderStatusEvent({
    @required this.burial,
    @required this.orderId,
  });
  @override
  String toString() => 'Check order status event';
}

class HistoryRouteEvent extends ContentEvent {
  @override
  String toString() => 'History route event';
}

class RepeatOrderEvent extends ContentEvent {
  final HistoryOrder order;

  RepeatOrderEvent({@required this.order});
  @override
  String toString() => 'Repeat order event';
}

class ItemsRouteEvent extends ContentEvent {
  final int cityId;
  ItemsRouteEvent(this.cityId);

  @override
  String toString() => 'Items route event';
}

class ClearErrorEvent extends ContentEvent {
  @override
  String toString() => 'Bloc clear error event';
}
