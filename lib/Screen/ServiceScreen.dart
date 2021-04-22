import 'package:app/api/v1/service.pb.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/config/config.dart';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ServiceScreen extends StatefulWidget {
  final Service service;

  ServiceScreen(this.service);
  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).Explanation),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: scale(context, 26)),
          child: Column(children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: verticalScale(context, 16)),
                child: Text(
                  widget.service.title,
                  style: TextStyle(fontSize: 24),
                )),
            widget.service.image != ""
                ? Padding(
                    padding: EdgeInsets.only(top: verticalScale(context, 10)),
                    child: CachedNetworkImage(
                      imageUrl: Config.Upload + widget.service.image,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ))
                : Container(),
            Padding(
                padding: EdgeInsets.only(top: verticalScale(context, 16)),
                child: Text(
                  widget.service.description,
                  style: TextStyle(fontSize: 14),
                )),
          ])),
    ));
  }
}
