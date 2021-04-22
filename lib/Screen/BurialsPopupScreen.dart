import 'package:app/blocs/content/Bloc.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/services/navigation.dart';
import 'package:app/components/PopupMenu.dart' as popup;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BurialsScreen extends StatefulWidget {
  final burials;

  BurialsScreen(this.burials);
  @override
  _BurialsScreenState createState() => _BurialsScreenState();
}

class _BurialsScreenState extends State<BurialsScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final DateFormat formatter = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).SearchResults),
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
                  top: verticalScale(context, 20),
                  left: scale(context, 20),
                  right: scale(context, 20)),
              child: Column(children: <Widget>[
                Stack(children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: verticalScale(context, 540),
                              child: AnimatedList(
                                key: _listKey,
                                initialItemCount: widget.burials.length,
                                itemBuilder: (context, index, animation) {
                                  return _buildItem(
                                      widget.burials[index], animation);
                                },
                              ),
                            ),
                          ],
                        )
                      ])
                ])
              ])),
        ],
      ),
    ));
  }

  Widget _buildItem(dynamic item, Animation animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Container(
          margin: EdgeInsets.only(
              left: scale(context, 5),
              right: scale(context, 5),
              top: verticalScale(context, 5),
              bottom: verticalScale(context, 20)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Card(
            margin: EdgeInsets.all(0),
            elevation: 0,
            child: ListTile(
              trailing: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(verticalScale(context, 40))),
                      side: BorderSide(color: Colors.white),
                    ),
                    shadows: [
                      const BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  child: popup.PopupMenuButton<int>(
                      offset: Offset(0.785, -verticalScale(context, 60)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      elevation: 2,
                      child: SvgPicture.asset('assets/img/menu.svg',
                          height: verticalScale(context, 40)),
                      onSelected: (value) {
                        _menuSelect(value, item);
                      },
                      itemBuilder: (context) => [
                            popup.PopupMenuItem(
                              value: 1,
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  height: double.infinity,
                                  width: double.infinity,
                                  padding:
                                      EdgeInsets.only(left: scale(context, 10)),
                                  decoration: BoxDecoration(
                                      color:
                                          Color(0xFFFF8908).withOpacity(0.65),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5.0),
                                          topRight: Radius.circular(5.0))),
                                  child: Text(S.of(context).MoreDetail,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white))),
                            ),
                            popup.PopupMenuDivider(height: 0.5),
                            popup.PopupMenuItem(
                                value: 2,
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    color: Color(0xFFFF8908).withOpacity(0.65),
                                    height: double.infinity,
                                    width: double.infinity,
                                    padding: EdgeInsets.only(
                                        left: scale(context, 10)),
                                    child: Text(S.of(context).Geolocation,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)))),
                            popup.PopupMenuDivider(height: 0.5),
                            popup.PopupMenuItem(
                                value: 3,
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    color: Color(0xFFFF8908).withOpacity(0.65),
                                    height: double.infinity,
                                    width: double.infinity,
                                    padding: EdgeInsets.only(
                                        left: scale(context, 10)),
                                    child: Text(S.of(context).Cleaning,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)))),
                            popup.PopupMenuDivider(height: 0.5),
                            popup.PopupMenuItem(
                                value: 4,
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    color: Color(0xFFFF8908).withOpacity(0.65),
                                    height: double.infinity,
                                    width: double.infinity,
                                    padding: EdgeInsets.only(
                                        left: scale(context, 10)),
                                    child: Text(S.of(context).OrderPhoto,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)))),
                            popup.PopupMenuDivider(height: 0.5),
                            popup.PopupMenuItem(
                              value: 5,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                height: double.infinity,
                                width: double.infinity,
                                padding:
                                    EdgeInsets.only(left: scale(context, 10)),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xFF5C312C),
                                        Color(0xFF311714)
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5.0),
                                      bottomRight: Radius.circular(5.0)),
                                ),
                                child: Text(S.of(context).OrderDirge,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white)),
                              ),
                            ),
                          ])),
              contentPadding: EdgeInsets.symmetric(
                  horizontal: scale(context, 10), vertical: 0),
              title: Text(
                item.buriedSurname +
                    " " +
                    item.buriedName +
                    " " +
                    item.buriedPatronymic,
              ),
              subtitle: Text(formatter.format(
                  DateTime.fromMillisecondsSinceEpoch(
                      item.date.seconds.toInt() * 1000 + 86400000))),
              onTap: () {
                Navigator.pushNamed(context, AppRouter.Location,
                    arguments: {"burial": item});
              },
            ),
          )),
    );
  }

  _menuSelect(value, item) {
    switch (value) {
      case 1:
        Navigator.pushNamed(context, AppRouter.Burial,
            arguments: {"burial": item});
        break;
      case 2:
        Navigator.pushNamed(context, AppRouter.Location,
            arguments: {"burial": item});
        break;
      case 3:
        BlocProvider.of<ContentBloc>(context)
            .add(CleaningRouteEvent(burial: item));
        break;
      case 4:
        BlocProvider.of<ContentBloc>(context)
            .add(PhotoRouteEvent(burial: item));
        break;
      case 5:
        break;
    }
  }
}
