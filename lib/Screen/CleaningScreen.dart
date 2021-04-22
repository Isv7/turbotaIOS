import 'package:app/api/v1/service.pb.dart';
import 'package:app/components/BottomNavbar.dart';
import 'package:app/components/OrderServiceForm.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';

import 'package:flutter/material.dart';

class CleaningScreen extends StatefulWidget {
  final burial;
  final List<Service> services;

  CleaningScreen(this.burial, this.services);
  @override
  _CleaningScreenState createState() => _CleaningScreenState();
}

class _CleaningScreenState extends State<CleaningScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).OrderCleaning),
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
              Stack(children: <Widget>[
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                          padding:
                              EdgeInsets.only(top: verticalScale(context, 16)),
                          child: Text(
                              this.widget.burial.buriedSurname +
                                  " " +
                                  this.widget.burial.buriedName +
                                  " " +
                                  this.widget.burial.buriedPatronymic,
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF351916)))),
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
                      OrderServiceForm(
                          burial: widget.burial, services: widget.services)
                    ],
                  )
                ]),
              ])
            ])),
          ],
        ),
      ),
    );
  }
}
