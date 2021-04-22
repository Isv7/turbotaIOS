import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderSuccessScreen extends StatefulWidget {
  final burial;
  final order;

  OrderSuccessScreen(this.burial, this.order);
  @override
  _OrderSuccessScreenState createState() => _OrderSuccessScreenState();
}

class _OrderSuccessScreenState extends State<OrderSuccessScreen> {
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        title: Text(S.of(context).YourOrder),
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
              child: Column(children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                Widget>[
              Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: verticalScale(context, 74)),
                      child: Image.asset('assets/img/Splash-Logo.png',
                          height: verticalScale(context, 159))),
                  Padding(
                      padding: EdgeInsets.only(top: verticalScale(context, 26)),
                      child: Text(
                          S.of(context).YourOrder.toUpperCase() +
                              " №" +
                              widget.order.id.toString() +
                              " " +
                              S.of(context).Accepted.toUpperCase(),
                          style: TextStyle(
                              fontSize: 14, color: Color(0xFF351916)))),
                  Padding(
                      padding: EdgeInsets.only(
                          top: verticalScale(context, 6),
                          left: scale(context, 35),
                          right: scale(context, 35)),
                      child: Text(S.of(context).AcceptedText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, color: Color(0xFF351916)))),
                  if (this.widget.burial != null)
                    Padding(
                        padding:
                            EdgeInsets.only(top: verticalScale(context, 20)),
                        child: Text(
                            this.widget.burial.buriedSurname +
                                " " +
                                this.widget.burial.buriedName +
                                " " +
                                this.widget.burial.buriedPatronymic,
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF351916)))),
                  if (this.widget.burial != null)
                    Padding(
                        padding:
                            EdgeInsets.only(top: verticalScale(context, 8)),
                        child: Text(
                            "м. " +
                                this
                                    .widget
                                    .burial
                                    .subsector
                                    .sector
                                    .cemetery
                                    .city
                                    .name +
                                " " +
                                this
                                    .widget
                                    .burial
                                    .subsector
                                    .sector
                                    .cemetery
                                    .name,
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF351916)))),
                  if (this.widget.burial != null)
                    Padding(
                        padding:
                            EdgeInsets.only(top: verticalScale(context, 2)),
                        child: Text(
                            S.of(context).Sector +
                                " № " +
                                this.widget.burial.subsector.sector.name +
                                " " +
                                S.of(context).Subsector +
                                " № " +
                                this.widget.burial.subsector.name +
                                " " +
                                S.of(context).Row +
                                " № " +
                                this.widget.burial.row +
                                " " +
                                S.of(context).Place +
                                " № " +
                                this.widget.burial.place,
                            style: TextStyle(
                                fontSize: 9, color: Color(0xFF351916)))),
                  if (this.widget.order.items.length > 0)
                    Padding(
                        padding:
                            EdgeInsets.only(top: verticalScale(context, 20)),
                        child: Text(this.widget.order.items[0].title,
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF351916)))),
                  if (this.widget.order.items.length > 0)
                    Padding(
                        padding:
                            EdgeInsets.only(top: verticalScale(context, 8)),
                        child: Text(this.widget.order.items[0].article,
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF351916)))),
                ],
              )
            ]),
          ])),
        ],
      ),
    ));
  }
}
