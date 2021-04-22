import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

abstract class ContentState extends Equatable {
  @override
  List<Object> get props => [];
}

class ContentLoadingState extends ContentState {
  ContentLoadingState();
  @override
  String toString() => 'Content loading state';
}

class ChangeLanguageState extends ContentState {
  final Locale locale;
  ChangeLanguageState({this.locale});
  @override
  String toString() => 'Change language state';
}

class ContentObjectsState extends ContentState {
  final dynamic objects;

  ContentObjectsState({@required this.objects});
  @override
  String toString() => 'Content objects state';
}

class BurialsResultsState extends ContentState {
  final dynamic burials;

  BurialsResultsState({@required this.burials});
  @override
  String toString() => 'Burials results state';
}

class CleaningRouteState extends ContentState {
  @override
  String toString() => 'Cleaning route state';
}

class PhotoRouteState extends ContentState {
  @override
  String toString() => 'Photo route state';
}

class ServicesRouteState extends ContentState {
  @override
  String toString() => 'Services route state';
}

class HistoryOrdersRouteState extends ContentState {
  @override
  String toString() => 'History orders state';
}

class ItemsRouteState extends ContentState {
  @override
  String toString() => 'Items orders state';
}

class ContentWithoutErrorState extends ContentState {
  ContentWithoutErrorState();
  @override
  String toString() => 'Content without error state';
}

class ContentErrorState extends ContentState {
  final String code;
  final String message;

  ContentErrorState({@required this.code, @required this.message});
  @override
  String toString() => 'Content error state';
}
