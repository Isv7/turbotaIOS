import 'package:app/blocs/content/Bloc.dart';
import 'package:app/blocs/content/ContentBloc.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/services/navigation.dart';
import '../services/custom_icons.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:expandable/expandable.dart';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryOrdersScreen extends StatefulWidget {
  final orders;
  final total;

  HistoryOrdersScreen(this.orders, this.total);
  @override
  _HistoryOrdersScreenState createState() => _HistoryOrdersScreenState();
}

class _HistoryOrdersScreenState extends State<HistoryOrdersScreen> {
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        title: Text(S.of(context).HistoryOrders),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            height: double.infinity,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          SingleChildScrollView(
              padding: EdgeInsets.only(
                  top: verticalScale(context, 32),
                  bottom: verticalScale(context, 8)),
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: scale(context, 26)),
                                child: Text(S.of(context).Location,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5))),
                        Expanded(
                            flex: 1,
                            child: Padding(
                                padding: EdgeInsets.only(
                                  left: scale(context, 30),
                                ),
                                child: Text(S.of(context).Date,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5))),
                        Expanded(
                            flex: 1,
                            child: Text(S.of(context).Amount,
                                style: Theme.of(context).textTheme.headline5))
                      ]),
                  Divider(),
                  Column(
                      children: this
                          .widget
                          .orders
                          .map<Widget>((order) => Order(order))
                          .toList())
                ],
              )),
        ],
      ),
    ));
  }
}

class Order extends StatelessWidget {
  final order;
  Order(this.order);

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('dd.MM.yyyy');

    return Column(children: <Widget>[
      ExpandablePanel(
        header: Container(
            child: Padding(
                padding: EdgeInsets.only(
                    left: scale(context, 10),
                    right: scale(context, 10),
                    bottom: verticalScale(context, 3)),
                child: Row(children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: scale(context, 10),
                            right: scale(context, 10)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                      order.burial.subsector.sector.cemetery
                                                  .city.name !=
                                              ""
                                          ? ("м. " +
                                              order.burial.subsector.sector
                                                  .cemetery.city.name +
                                              "\n" +
                                              order.burial.subsector.sector
                                                  .cemetery.name)
                                          : "",
                                      softWrap: true,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1)),
                              Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                        left: scale(context, 3),
                                      ),
                                      child: Text(
                                          formatter.format(DateTime
                                              .fromMicrosecondsSinceEpoch(order
                                                      .createdAt.seconds
                                                      .toInt() *
                                                  1000000)),
                                          softWrap: true,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                            left: scale(context, 10),
                                          ),
                                          child: Text(
                                              order.amount.substring(0,
                                                      order.amount.length - 3) +
                                                  " " +
                                                  S.of(context).UAH,
                                              softWrap: true,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1))))
                            ])),
                  ),
                  ExpandableIcon(
                    theme: const ExpandableThemeData(
                      expandIcon: Custom.arrow_alt_circle_down,
                      collapseIcon: Custom.arrow_alt_circle_up,
                      iconColor: Color(0xFFFF8908),
                      iconSize: 28.0,
                      iconRotationAngle: -pi / 2,
                      iconPadding: EdgeInsets.only(right: 5),
                      hasIcon: false,
                    ),
                  ),
                ]))),
        expanded: Container(
          margin: EdgeInsets.only(
              top: verticalScale(context, 14),
              left: scale(context, 10),
              right: scale(context, 10)),
          padding: EdgeInsets.only(
              top: verticalScale(context, 5),
              bottom: verticalScale(context, 10),
              left: scale(context, 10),
              right: scale(context, 10)),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF351A16).withOpacity(0.1))),
          child: Column(children: [
            Column(
                children: order.services.length > 0
                    ? order.services
                        .map<Widget>((service) => Service(service))
                        .toList()
                    : order.items.map<Widget>((item) => Item(item)).toList()),
            Padding(
                padding: EdgeInsets.only(
                    left: scale(context, 10), right: scale(context, 10)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(S.of(context).All,
                          softWrap: true,
                          style: Theme.of(context).textTheme.subtitle1),
                      Text(
                          order.amount.substring(0, order.amount.length - 3) +
                              " " +
                              S.of(context).UAH,
                          softWrap: true,
                          style: Theme.of(context).textTheme.subtitle1)
                    ])),
            /////////////  Submit Button///////////////////
            if (order.services.length > 0)
              Padding(
                padding: EdgeInsets.only(
                    top: verticalScale(context, 12.0),
                    left: scale(context, 10.0),
                    right: scale(context, 10.0),
                    bottom: scale(context, 3.0)),
                child: SizedBox(
                    width: double.infinity,
                    height: verticalScale(context, 48),
                    child: RaisedButton(
                      child: Text(S.of(context).RetryOrder,
                          style: Theme.of(context).textTheme.button),
                      color: Theme.of(context).primaryColor,
                      elevation: 0,
                      onPressed: () {
                        BlocProvider.of<ContentBloc>(context)
                            .add(RepeatOrderEvent(order: order));
                      },
                      shape: new RoundedRectangleBorder(
                          borderRadius:
                              new BorderRadius.circular(scale(context, 5.0))),
                    )),
              ),
          ]),
        ),
        hasIcon: false,
      ),
      Divider()
    ]);
  }
}

class Service extends StatelessWidget {
  final service;
  Service(this.service);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(
            left: scale(context, 10), right: scale(context, 10)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(service.title,
              softWrap: true, style: Theme.of(context).textTheme.subtitle1),
          Text(service.price.toInt().toString() + " " + S.of(context).UAH,
              softWrap: true, style: Theme.of(context).textTheme.subtitle1)
        ]),
      ),
      Divider()
    ]);
  }
}

class Item extends StatelessWidget {
  final item;
  Item(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(
            left: scale(context, 10), right: scale(context, 10)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(item.title,
              softWrap: true, style: Theme.of(context).textTheme.subtitle1),
          Text(item.price.toInt().toString() + " " + S.of(context).UAH,
              softWrap: true, style: Theme.of(context).textTheme.subtitle1)
        ]),
      ),
      Divider()
    ]);
  }
}
