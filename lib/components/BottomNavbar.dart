import 'package:app/blocs/content/Bloc.dart';
import 'package:app/config/config.dart';
import 'package:app/services/navigation.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatelessWidget {
  final String active;
  final burial;

  BottomNavBar({this.active, this.burial});

  @override
  Widget build(BuildContext context) {
    final NavigationServiceSingleton _navigationService =
        NavigationServiceSingleton();

    return Stack(overflow: Overflow.visible, children: <Widget>[
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(
              color: Color(0xFFFF8908),
              width: 1,
            )),
            gradient: LinearGradient(
              colors: [Color(0xFFF9EAFA), Color(0xFFE8F7F5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          height: verticalScale(context, 62),
          child: BottomAppBar(
              color: Colors.transparent,
              elevation: 0,
              child: Padding(
                padding: EdgeInsets.only(
                    left: scale(context, 10), right: scale(context, 10)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              _navigationService.goBack();
                              BlocProvider.of<ContentBloc>(context)
                                  .add(PhotoRouteEvent(burial: this.burial));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/img/bottom-photo-video.png",
                                    width: scale(context, 34)),
                                SizedBox(height: verticalScale(context, 10)),
                                Text(
                                  S.of(context).OrderPhoto,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFF371B17), fontSize: 7),
                                )
                              ],
                            ),
                          ),
                        ]),
                    InkWell(
                      onTap: () {
                        _navigationService.goBack();
                        BlocProvider.of<ContentBloc>(context)
                            .add(CleaningRouteEvent(burial: this.burial));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/img/bottom-cleaning.png",
                              width: scale(context, 34)),
                          SizedBox(height: verticalScale(context, 10)),
                          Text(
                            S.of(context).Cleaning,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF371B17), fontSize: 7),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      iconSize: 50,
                      icon: Image.asset('assets/img/bottomMenu.png'),
                      onPressed: () {
                        _navigationService.replaceWith(AppRouter.Burial,
                            arguments: {"burial": this.burial});
                      },
                    ),
                    InkWell(
                      onTap: () {
                        _navigationService.goBack();
                        BlocProvider.of<ContentBloc>(context)
                            .add(ServicesRouteEvent(burial: this.burial));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/img/bottom-services.png",
                              width: scale(context, 34)),
                          SizedBox(height: verticalScale(context, 3)),
                          Text(
                            S.of(context).Services,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF371B17), fontSize: 7),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _navigationService.goBack();
                        BlocProvider.of<ContentBloc>(context).add(
                            ItemsRouteEvent(
                                burial.subsector.sector.cemetery.city.id));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/img/bottom-shop.png",
                              width: scale(context, 40)),
                          SizedBox(height: verticalScale(context, 3)),
                          Text(
                            S.of(context).Shop,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF371B17), fontSize: 7),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))),
      Positioned(
          left: scale(context, 187.5) - verticalScale(context, 80) / 2,
          bottom: verticalScale(context, -5),
          child: IconButton(
            padding: EdgeInsets.all(0),
            iconSize: verticalScale(context, 80),
            icon: Image.asset('assets/img/bottomMenu.png'),
            onPressed: () {
              _navigationService.replaceWith(AppRouter.Burial,
                  arguments: {"burial": this.burial});
            },
          ))
    ]);
  }
}
