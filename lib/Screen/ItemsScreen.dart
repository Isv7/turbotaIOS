import 'package:app/api/v1/item.pb.dart';
import 'package:app/components/SliverGridDelegateFixedHeight.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/services/navigation.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ItemsScreen extends StatefulWidget {
  final List<Item> items;
  final total;

  ItemsScreen(this.items, this.total);
  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        title: Text(S.of(context).Items),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            height: double.infinity,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: verticalScale(context, 10.0),
                  left: scale(context, 10.0),
                  right: scale(context, 10.0),
                  bottom: scale(context, 10.0)),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: GridView.builder(
                          padding: EdgeInsets.all(5),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                                  crossAxisCount:
                                      MediaQuery.of(context).size.aspectRatio >
                                              1
                                          ? 3
                                          : 2,
                                  crossAxisSpacing: 15,
                                  mainAxisSpacing: 15,
                                  height:
                                      MediaQuery.of(context).size.aspectRatio >
                                              1
                                          ? verticalScale(context, 470)
                                          : verticalScale(context, 260)),
                          itemCount: widget.items.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Material(
                                color: Colors.white.withOpacity(0.0),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, AppRouter.Item, arguments: {
                                        "item": widget.items[index]
                                      });
                                    },
                                    child: Container(
                                      decoration: new BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3)),
                                        boxShadow: [
                                          new BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.25),
                                              offset: Offset(0, 4),
                                              blurRadius: 4,
                                              spreadRadius: 0),
                                        ],
                                      ),
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                        ),
                                        clipBehavior: Clip.hardEdge,
                                        elevation: 0,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                                width: double.infinity,
                                                height: MediaQuery.of(context)
                                                            .size
                                                            .aspectRatio >
                                                        1
                                                    ? 150
                                                    : verticalScale(
                                                        context, 150),
                                                margin: EdgeInsets.all(
                                                    scale(context, 3.0)),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3.0),
                                                    border: Border.all(
                                                        color: Color.fromRGBO(
                                                            255, 137, 8, 0.4))),
                                                child: CachedNetworkImage(
                                                  imageUrl: Config.ItemUpload +
                                                      widget.items[index]
                                                          .images[0].path +
                                                      "/" +
                                                      widget.items[index]
                                                          .images[0].filename,
                                                  fit: BoxFit.cover,
                                                  errorWidget:
                                                      (context, url, error) =>
                                                          Icon(Icons.error),
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                  top: verticalScale(
                                                      context, 5.0),
                                                  left: scale(context, 6.0),
                                                  right: scale(context, 6.0),
                                                ),
                                                child: Text(
                                                    widget.items[index].title,
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color(
                                                            0xFF351916)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                  left: scale(context, 6.0),
                                                  right: scale(context, 6.0),
                                                ),
                                                child: widget
                                                        .items[index].available
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
                                            Padding(
                                                padding: EdgeInsets.only(
                                                  top:
                                                      verticalScale(context, 3),
                                                  left: scale(context, 6.0),
                                                  right: scale(context, 6.0),
                                                ),
                                                child: Text(
                                                    widget.items[index].price
                                                            .toInt()
                                                            .toString() +
                                                        " " +
                                                        S.of(context).UAH,
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color(
                                                            0xFF351916)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                  top: verticalScale(
                                                      context, 0.0),
                                                ),
                                                child: Divider()),
                                            SizedBox(
                                                height: MediaQuery.of(context)
                                                            .size
                                                            .aspectRatio >
                                                        1
                                                    ? 25
                                                    : verticalScale(
                                                        context, 25),
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          AppRouter.ItemOrder,
                                                          arguments: {
                                                            "item": widget
                                                                .items[index]
                                                          });
                                                    },
                                                    style: ButtonStyle(
                                                      padding:
                                                          MaterialStateProperty
                                                              .all(EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          5,
                                                                      horizontal:
                                                                          0)),
                                                    ),
                                                    child: Text(
                                                      S
                                                          .of(context)
                                                          .Buy
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color(
                                                              0xFF351916)),
                                                    )))
                                          ],
                                        ),
                                      ),
                                    )));
                          })),
                ],
              )),
        ],
      ),
    ));
  }
}
