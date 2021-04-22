import 'dart:io';

import 'package:app/blocs/content/Bloc.dart';
import 'package:app/blocs/content/ContentBloc.dart';
import 'package:app/components/CustomDrawer.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/services/navigation.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BurialScreen extends StatefulWidget {
  final burial;

  BurialScreen(this.burial);
  @override
  _BurialScreenState createState() => _BurialScreenState();
}

class _BurialScreenState extends State<BurialScreen> {
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _drawerKey,
      drawer: CustomDrawer(_drawerKey),
      appBar: AppBar(
        title: Text(S.of(context).BurialCard),
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(
                Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            }),
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
                    Image.asset(
                      "assets/img/image.jpg",
                      width: percentWidth(context, 100),
                      height: verticalScale(context, 210),
                      fit: BoxFit.cover,
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: verticalScale(context, 12)),
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
                    Padding(
                        padding: EdgeInsets.fromLTRB(
                            scale(context, 62),
                            verticalScale(context, 12),
                            scale(context, 62),
                            verticalScale(context, 12)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(children: <Widget>[
                                Text(S.of(context).Birthdate,
                                    style: TextStyle(fontSize: 10)),
                                Text(
                                    DateTime.fromMillisecondsSinceEpoch(this
                                                            .widget
                                                            .burial
                                                            .birthdate
                                                            .seconds
                                                            .toInt() *
                                                        1000 +
                                                    86400000)
                                                .year
                                                .toString() ==
                                            "1"
                                        ? "?"
                                        : DateTime.fromMillisecondsSinceEpoch(
                                                this
                                                            .widget
                                                            .burial
                                                            .birthdate
                                                            .seconds
                                                            .toInt() *
                                                        1000 +
                                                    86400000)
                                            .year
                                            .toString(),
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFF979797)))
                              ]),
                              Column(children: <Widget>[
                                Text(S.of(context).DateOfDeath,
                                    style: TextStyle(fontSize: 10)),
                                Text(
                                    DateTime.fromMillisecondsSinceEpoch(this
                                                            .widget
                                                            .burial
                                                            .date
                                                            .seconds
                                                            .toInt() *
                                                        1000 +
                                                    86400000)
                                                .year
                                                .toString() ==
                                            "1"
                                        ? "?"
                                        : DateTime.fromMillisecondsSinceEpoch(
                                                this
                                                            .widget
                                                            .burial
                                                            .date
                                                            .seconds
                                                            .toInt() *
                                                        1000 +
                                                    86400000)
                                            .year
                                            .toString(),
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFF979797)))
                              ])
                            ])),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: scale(context, 160),
                            height: verticalScale(context, 1),
                            margin: EdgeInsets.only(left: scale(context, 22)),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(53, 26, 22, 0.1))),
                          ),
                          Container(
                            width: scale(context, 160),
                            height: verticalScale(context, 1),
                            margin: EdgeInsets.only(right: scale(context, 22)),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(53, 26, 22, 0.1))),
                          ),
                        ]),
                    Padding(
                        padding: EdgeInsets.fromLTRB(
                            scale(context, 22),
                            verticalScale(context, 3),
                            scale(context, 22),
                            verticalScale(context, 5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: scale(context, 85),
                              height: scale(context, 85),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 4), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRouter.Location, arguments: {
                                    "burial": this.widget.burial
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                padding: EdgeInsets.all(0.0),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF5A302B),
                                          Color(0xFF351A16)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset(
                                              "assets/img/search-location.png",
                                              width: scale(context, 40)),
                                          SizedBox(
                                              height:
                                                  verticalScale(context, 12)),
                                          Text(
                                            S.of(context).Geolocation,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ),
                            Container(
                              width: scale(context, 1),
                              height: verticalScale(context, 110),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(53, 26, 22, 0.1))),
                            ),
                            Container(
                              width: scale(context, 85),
                              height: scale(context, 85),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 4), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: RaisedButton(
                                onPressed: () {
                                  BlocProvider.of<ContentBloc>(context).add(
                                      PhotoRouteEvent(
                                          burial: this.widget.burial));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                padding: EdgeInsets.all(0.0),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF5A302B),
                                          Color(0xFF351A16)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset(
                                              "assets/img/photo-video.png",
                                              height: scale(context, 40)),
                                          SizedBox(
                                              height:
                                                  verticalScale(context, 12)),
                                          Text(
                                            S.of(context).OrderPhoto,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ),
                            Container(
                              width: scale(context, 1),
                              height: verticalScale(context, 110),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(53, 26, 22, 0.1))),
                            ),
                            Container(
                              width: scale(context, 85),
                              height: scale(context, 85),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 4), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: RaisedButton(
                                onPressed: () {
                                  BlocProvider.of<ContentBloc>(context).add(
                                      CleaningRouteEvent(
                                          burial: this.widget.burial));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                padding: EdgeInsets.all(0.0),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF5A302B),
                                          Color(0xFF351A16)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset("assets/img/cleaning.png",
                                              height: scale(context, 40)),
                                          SizedBox(
                                              height:
                                                  verticalScale(context, 12)),
                                          Text(
                                            S.of(context).Cleaning,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: scale(context, 160),
                            height: verticalScale(context, 1),
                            margin: EdgeInsets.only(left: scale(context, 22)),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(53, 26, 22, 0.1))),
                          ),
                          Container(
                            width: scale(context, 160),
                            height: verticalScale(context, 1),
                            margin: EdgeInsets.only(right: scale(context, 22)),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(53, 26, 22, 0.1))),
                          ),
                        ]),
                    Padding(
                        padding: EdgeInsets.fromLTRB(
                            scale(context, 22),
                            verticalScale(context, 5),
                            scale(context, 22),
                            verticalScale(context, 8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: scale(context, 85),
                              height: scale(context, 85),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 4), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: RaisedButton(
                                onPressed: () {
                                  BlocProvider.of<ContentBloc>(context).add(
                                      ServicesRouteEvent(
                                          burial: this.widget.burial));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                padding: EdgeInsets.all(0.0),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF5A302B),
                                          Color(0xFF351A16)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset("assets/img/services.png",
                                              width: scale(context, 40)),
                                          SizedBox(
                                              height:
                                                  verticalScale(context, 12)),
                                          Text(
                                            S.of(context).Services,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ),
                            Container(
                              width: scale(context, 1),
                              height: verticalScale(context, 110),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(53, 26, 22, 0.1))),
                            ),
                            Container(
                              width: scale(context, 85),
                              height: scale(context, 85),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 4), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: RaisedButton(
                                onPressed: () {
                                  BlocProvider.of<ContentBloc>(context).add(
                                      ItemsRouteEvent(widget.burial.subsector
                                          .sector.cemetery.city.id));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                padding: EdgeInsets.all(0.0),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF5A302B),
                                          Color(0xFF351A16)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset("assets/img/shop.png",
                                              width: scale(context, 40)),
                                          SizedBox(
                                              height:
                                                  verticalScale(context, 12)),
                                          Text(
                                            S.of(context).Shop,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ),
                            Container(
                              width: scale(context, 1),
                              height: verticalScale(context, 110),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(53, 26, 22, 0.1))),
                            ),
                            Container(
                              width: scale(context, 85),
                              height: scale(context, 85),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 4), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: RaisedButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                padding: EdgeInsets.all(0.0),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF5A302B),
                                          Color(0xFF351A16)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset("assets/img/dirge.png",
                                              width: scale(context, 40)),
                                          SizedBox(
                                              height:
                                                  verticalScale(context, 12)),
                                          Text(
                                            S.of(context).Dirge,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                )
              ]),
              Positioned(
                  top: verticalScale(context, 10.0),
                  left: scale(context, 10),
                  child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    child: SvgPicture.asset('assets/img/menu.svg',
                        height: verticalScale(context, 40)),
                    onPressed: () =>
                        _drawerKey.currentState.openDrawer(), // open drawer
                  )),
            ])
          ])),
        ],
      ),
    ));
  }
}
