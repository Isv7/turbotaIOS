import 'package:app/components/Customdrawer.dart';
import 'package:app/components/Loader.dart';
import 'package:app/components/SearchForm.dart';
import 'package:app/config/config.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _drawerKey,
      drawer: CustomDrawer(_drawerKey),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            height: double.infinity,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          SingleChildScrollView(
              padding: EdgeInsets.only(top: verticalScale(context, 80)),
              child: Column(children: <Widget>[
                Stack(children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SearchForm(),
                      ])
                ])
              ])),
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
          Positioned(
              top: verticalScale(context, 20.0),
              right: scale(context, 20),
              child: Image.asset(
                "assets/img/Splash-Logo.png",
                width: 40,
                height: 40,
              )),
          Loader()
        ],
      ),
    ));
  }
}
