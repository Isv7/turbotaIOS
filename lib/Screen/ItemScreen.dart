import 'package:app/api/v1/item.pb.dart';
import 'package:app/blocs/content/Bloc.dart';
import 'package:app/blocs/content/ContentBloc.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/services/navigation.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ItemScreen extends StatefulWidget {
  final Item item;

  ItemScreen(this.item);
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        title: Text(S.of(context).ItemCard),
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
              padding: EdgeInsets.only(bottom: verticalScale(context, 8)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                      height: verticalScale(context, 250),
                      child: Carousel(
                        images: widget.item.images
                            .map(
                              (item) => Image.network(
                                Config.ItemUpload +
                                    item.path +
                                    "/" +
                                    item.filename,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            )
                            .toList(),
                        dotSize: 12.0,
                        dotIncreaseSize: 1.1,
                        dotSpacing: scale(context, 20),
                        autoplayDuration: Duration(seconds: 7),
                        indicatorBgPadding: 40,
                        dotIncreasedColor: Color(0xFF361B17),
                        overlayShadow: false,
                        dotColor: Color(0xFFFD8A0D),
                        dotBgColor: Colors.white.withOpacity(0),
                      )),
                  FractionalTranslation(
                      translation: Offset(0, -0.26),
                      child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: scale(context, 10)),
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                  spreadRadius: 0),
                            ],
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(
                                top: verticalScale(context, 17.0),
                                left: scale(context, 10.0),
                                right: scale(context, 10.0),
                                bottom: verticalScale(context, 17.0),
                              ),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(widget.item.title,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF351916))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                          top: verticalScale(context, 4.0),
                                        ),
                                        child: Row(children: [
                                          Text(widget.item.article,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xFF979797))),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                left: scale(context, 30.0),
                                              ),
                                              child: widget.item.available
                                                  ? Text(
                                                      S.of(context).Available,
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color: Color(
                                                              0xFF18C409)),
                                                    )
                                                  : Text(
                                                      S
                                                          .of(context)
                                                          .NotAvailable,
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color: Color(
                                                              0xFFFF8908)),
                                                    )),
                                        ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                          top: verticalScale(context, 8),
                                        ),
                                        child: Text(
                                            S.of(context).Price +
                                                ": " +
                                                widget.item.price
                                                    .toInt()
                                                    .toString() +
                                                " " +
                                                S.of(context).UAH,
                                            style: TextStyle(
                                              fontSize: 10,
                                            ))),
                                  ])))),
                  FractionalTranslation(
                      translation: Offset(0, -0.16),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: scale(context, 10)),
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          boxShadow: [
                            new BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0, 4),
                                blurRadius: 4,
                                spreadRadius: 0),
                          ],
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(
                              top: verticalScale(context, 12.0),
                              bottom: verticalScale(context, 18.0),
                            ),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(
                                        left: scale(context, 10.0),
                                        right: scale(context, 10.0),
                                      ),
                                      child: Row(children: [
                                        SvgPicture.asset('assets/img/book.svg'),
                                        Padding(
                                            padding: EdgeInsets.only(
                                              left: scale(context, 14.0),
                                            ),
                                            child: Text(
                                              S.of(context).Description,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xFF351916)),
                                            )),
                                      ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                        left: scale(context, 4.0),
                                        right: scale(context, 4.0),
                                        bottom: verticalScale(context, 4),
                                      ),
                                      child: Divider()),
                                  Padding(
                                      padding: EdgeInsets.only(
                                        left: scale(context, 8.0),
                                        right: scale(context, 8.0),
                                      ),
                                      child: Text(
                                        S.of(context).Description,
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: Color(0xFF351916)
                                                .withOpacity(0.75)),
                                      ))
                                ])),
                      )),
                  /////////////  Submit Button///////////////////
                  BlocBuilder<ContentBloc, ContentState>(
                      builder: (context, state) {
                    return Padding(
                      padding: EdgeInsets.only(
                          top: verticalScale(context, 44.0),
                          left: scale(context, 30.0),
                          right: scale(context, 30.0),
                          bottom: scale(context, 20.0)),
                      child: SizedBox(
                          width: double.infinity,
                          height: verticalScale(context, 48),
                          child: RaisedButton(
                            child: Text(
                                S.of(context).BuyItem +
                                    " " +
                                    widget.item.price.toInt().toString() +
                                    " " +
                                    S.of(context).UAH,
                                style: Theme.of(context).textTheme.button),
                            color: !(state is ContentLoadingState)
                                ? Theme.of(context).primaryColor
                                : Color(0xFFDDDDDD),
                            elevation: 0,
                            onPressed: state is ContentLoadingState
                                ? () {
                                    FocusScope.of(context).unfocus();
                                  }
                                : () {
                                    FocusScope.of(context).unfocus();
                                    Navigator.pushNamed(
                                        context, AppRouter.ItemOrder,
                                        arguments: {"item": widget.item});
                                  },
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(
                                    scale(context, 5.0))),
                          )),
                    );
                  }),
                ],
              )),
        ],
      ),
    ));
  }
}
