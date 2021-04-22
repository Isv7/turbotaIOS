import 'package:app/blocs/content/Bloc.dart';
import 'package:app/components/Loader.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/services/navigation.dart';

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
          Loader()
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
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(
                  top: 10, left: scale(context, 18), right: scale(context, 18)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              item.buriedSurname +
                                  " " +
                                  item.buriedName +
                                  " " +
                                  item.buriedPatronymic,
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                          Padding(
                              padding: EdgeInsets.only(
                                top: 2,
                                bottom: 10,
                              ),
                              child: Text(
                                  (DateTime.fromMillisecondsSinceEpoch(item.birthdate.seconds.toInt() * 1000 + 86400000).year.toString() == "1"
                                          ? "?"
                                          : DateTime.fromMillisecondsSinceEpoch(
                                                  item.birthdate.seconds.toInt() * 1000 +
                                                      86400000)
                                              .year
                                              .toString()) +
                                      " - " +
                                      (DateTime.fromMillisecondsSinceEpoch(item.date.seconds.toInt() * 1000 + 86400000)
                                                  .year
                                                  .toString() ==
                                              "1"
                                          ? "?"
                                          : DateTime.fromMillisecondsSinceEpoch(
                                                  item.date.seconds.toInt() * 1000 +
                                                      86400000)
                                              .year
                                              .toString()),
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF979797))))
                        ]),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Material(
                            color: Colors.white.withOpacity(0.0),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AppRouter.Location,
                                      arguments: {"burial": item});
                                },
                                child: SvgPicture.asset(
                                    'assets/img/location.svg'))))
                  ])),
          Row(children: [
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFF8908),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(5)),
                    ),
                    child: Material(
                        color: Colors.white.withOpacity(0.0),
                        child: InkWell(
                            onTap: () {
                              BlocProvider.of<ContentBloc>(context)
                                  .add(PhotoRouteEvent(burial: item));
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(S.of(context).OrderPhoto,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white))))))),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF5A302B),
                        Color(0xFF351A16),
                      ],
                    )),
                    child: Material(
                        color: Colors.white.withOpacity(0.0),
                        child: InkWell(
                            onTap: () {
                              BlocProvider.of<ContentBloc>(context)
                                  .add(CleaningRouteEvent(burial: item));
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(S.of(context).Cleaning,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white))))))),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFF8908),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(5)),
                    ),
                    child: Material(
                        color: Colors.white.withOpacity(0.0),
                        child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, AppRouter.Burial,
                                  arguments: {"burial": item});
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(S.of(context).MoreDetail,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white)))))))
          ])
        ]),
      ),
    );
  }
}
