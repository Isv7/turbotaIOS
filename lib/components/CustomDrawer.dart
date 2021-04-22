import 'package:app/blocs/content/Bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/generated/l10n.dart';
import 'package:app/config/config.dart';
import 'package:app/blocs/authentication/Bloc.dart';
import 'package:app/services/navigation.dart';

class CustomDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey;

  CustomDrawer(this.drawerKey);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Theme.of(context).primaryColor,
      child: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                  top: verticalScale(context, 0.0), left: scale(context, 5)),
              child: Row(children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: verticalScale(context, 15)),
                    child: SizedBox(
                      width: scale(context, 40),
                      child: FlatButton(
                          onPressed: () {
                            drawerKey.currentState.openEndDrawer();
                          },
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.close,
                                color: Color(0xFFFFFFFF),
                                size: 30,
                              )
                            ],
                          )),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: verticalScale(context, 7),
                        left: scale(context, 15)),
                    child: Text(S.of(context).Menu,
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            .apply(fontSizeDelta: 7)))
              ])),
          Material(
              color: Colors.white.withOpacity(0.0),
              child: InkWell(
                  onTap: () {
                    drawerKey.currentState.openEndDrawer();
                    Navigator.pushNamedAndRemoveUntil(context, AppRouter.Search,
                        (Route<dynamic> route) => false);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: verticalScale(context, 10),
                      bottom: verticalScale(context, 10),
                      left: scale(context, 60.0),
                    ),
                    child: Text(S.of(context).Poshuk,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .apply(color: Colors.white)),
                  ))),
          // Material(
          //     color: Colors.white.withOpacity(0.0),
          //     child: InkWell(
          //         onTap: () {
          //           BlocProvider.of<ContentBloc>(context)
          //               .add(HistoryRouteEvent());
          //           drawerKey.currentState.openEndDrawer();
          //         },
          //         child: Padding(
          //           padding: EdgeInsets.only(
          //             top: verticalScale(context, 10),
          //             bottom: verticalScale(context, 10),
          //             left: scale(context, 60.0),
          //           ),
          //           child: Text(S.of(context).History,
          //               style: Theme.of(context)
          //                   .textTheme
          //                   .caption
          //                   .apply(color: Colors.white)),
          //         ))),
          Material(
              color: Colors.white.withOpacity(0.0),
              child: InkWell(
                  onTap: () {
                    drawerKey.currentState.openEndDrawer();
                    Navigator.pushNamed(context, AppRouter.Languages);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: verticalScale(context, 15),
                      bottom: verticalScale(context, 15),
                      left: scale(context, 60.0),
                    ),
                    child: Text(S.of(context).Language,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .apply(color: Colors.white, heightFactor: 0.6)),
                  ))),
          Material(
              color: Colors.white.withOpacity(0.0),
              child: InkWell(
                  onTap: () {
                    drawerKey.currentState.openEndDrawer();
                    Navigator.pushNamed(context, AppRouter.Policy);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: verticalScale(context, 15),
                      bottom: verticalScale(context, 15),
                      left: scale(context, 60.0),
                    ),
                    child: Text(S.of(context).Policy,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .apply(color: Colors.white, heightFactor: 0.6)),
                  ))),
          Material(
              color: Colors.white.withOpacity(0.0),
              child: InkWell(
                  onTap: () {
                    drawerKey.currentState.openEndDrawer();
                    Navigator.pushNamed(context, AppRouter.TermsOfUse);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: verticalScale(context, 15),
                      bottom: verticalScale(context, 15),
                      left: scale(context, 60.0),
                    ),
                    child: Text(S.of(context).TermsOfUse,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .apply(color: Colors.white, heightFactor: 0.6)),
                  ))),
          // Padding(
          //     padding: EdgeInsets.only(top: verticalScale(context, 114)),
          //     child: Material(
          //         color: Colors.white.withOpacity(0.0),
          //         child: Material(
          //             color: Colors.white.withOpacity(0.0),
          //             child: InkWell(
          //                 onTap: () {
          //                   BlocProvider.of<AuthenticationBloc>(context)
          //                       .add(AuthenticationLogOutEvent());
          //                   drawerKey.currentState.openEndDrawer();
          //                 },
          //                 child: Padding(
          //                   padding: EdgeInsets.only(
          //                     top: verticalScale(context, 10),
          //                     bottom: verticalScale(context, 10),
          //                     left: scale(context, 60.0),
          //                   ),
          //                   child: Text(S.of(context).Exit,
          //                       style: Theme.of(context)
          //                           .textTheme
          //                           .caption
          //                           .apply(color: Colors.white)),
          //                 ))))),
        ],
      ),
    ));
  }
}
