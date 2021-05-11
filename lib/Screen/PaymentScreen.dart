import 'package:app/api/v1/burial.pb.dart';
import 'package:app/blocs/content/Bloc.dart';
import 'package:app/components/Loader.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';

class PaymentScreen extends StatefulWidget {
  final Burial burial;
  final Map<String, dynamic> order;

  PaymentScreen(this.burial, this.order);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  InAppWebViewController _webViewController;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final List<int> _servicesIds = [];
  final List<int> _itemsIds = [];
  final List<String> _ordered = [];
  Timer _timer;

  @override
  void dispose() {
    if (_timer != null) {
      _timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final publicKey = "i21806530811";
    final privateKey = "UW86pfjQaYrFYzKVI7Ho3tWn1BARo4F7FJwFfjWp";

    final orderId = Uuid().v1();
    double _amount;
    String _phone = widget.order["phone"].replaceAll(' ', '').length > 13
        ? widget.order["phone"].replaceAll(' ', '').substring(0, 13)
        : widget.order["phone"].replaceAll(' ', '');
    String _orderDescription = "";
    if (widget.order["services"] != null) {
      _amount = widget.order["services"].fold(
          0,
          (curr, next) =>
              curr + next.price + (next.price * next.commission) / 100);
      for (final service in widget.order["services"]) {
        _servicesIds.add(service.id);
        _ordered.add(service.title);
      }
    }
    if (widget.order["items"] != null) {
      _amount = widget.order["items"][0].price;
      for (final item in widget.order["items"]) {
        _itemsIds.add(item.id);
        _ordered.add(item.title);
      }
    }
    _orderDescription = """
      ${S.of(context).Surname + ": " + widget.order["surname"]}
      ${S.of(context).Name + ": " + widget.order["name"]}
      ${S.of(context).Order + ": " + _ordered.join(", ")}
      ${S.of(context).Date + ": " + (widget.order["date"] ?? "")}
      ${this.widget.burial.buriedSurname + " " + this.widget.burial.buriedName + " " + this.widget.burial.buriedPatronymic + ", " + "м. " + this.widget.burial.subsector.sector.cemetery.city.name + " " + this.widget.burial.subsector.sector.cemetery.name + ", " + S.of(context).Sector + " № " + this.widget.burial.subsector.sector.name + " " + S.of(context).Subsector + " № " + this.widget.burial.subsector.name + " " + S.of(context).Row + " № " + this.widget.burial.row + " " + S.of(context).Place + " № " + this.widget.burial.place}
      ${S.of(context).Phone + ": " + _phone}
      ${S.of(context).EmailForMedia + ": " + widget.order["email"]}
      ${S.of(context).Comment + ": " + widget.order["comment"]}
    """;

    final liqData = {
      "version": 3,
      "public_key": publicKey,
      "action": "pay",
      "amount": _amount,
      "currency": "UAH",
      "server_url": Config.ServerLiqpayCallback,
      "description": _orderDescription,
      "order_id": orderId,
      // "split_rules": [
      //   {
      //     "public_key": "i000000001",
      //     "amount": 1,
      //     "commission_payer": "sender",
      //     "server_url": "https://server1/callback"
      //   },
      //   {
      //     "public_key": "i000000002",
      //     "amount": 2,
      //     "commission_payer": "receiver",
      //     "server_url": "https://server2/callback"
      //   }
      // ]
    };

    var bytes = utf8.encode(jsonEncode(liqData));
    var base64Str = base64.encode(bytes);

    bytes =
        utf8.encode(privateKey + base64Str + privateKey); // data being hashed
    var signature = base64.encode(sha1.convert(bytes).bytes);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(S.of(context).Payment),
        centerTitle: true,
      ),
      body: Stack(fit: StackFit.expand, children: <Widget>[
        InAppWebView(
          initialFile: "assets/payment.html",
          initialHeaders: {},
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform:
                InAppWebViewOptions(debuggingEnabled: true, supportZoom: false),
          ),
          onWebViewCreated: (InAppWebViewController controller) {
            _webViewController = controller;
            _webViewController.addJavaScriptHandler(
                handlerName: 'getLiqpayData',
                callback: (args) {
                  return {
                    "base": "$base64Str",
                    "signature": "$signature",
                  };
                });
            _webViewController.addJavaScriptHandler(
                handlerName: 'liqpayCallback',
                callback: (args) {
                  // FocusScope.of(context).unfocus();
                  // final data = jsonDecode(args[0]);
                  // if (data["status"] == "success") {
                  //   final double _amount = data["amount"].toDouble();
                  //   // _scaffoldKey.currentState
                  //   //     .showSnackBar(SnackBar(content: Text(responseData["status"])));
                  // }
                });
            BlocProvider.of<ContentBloc>(context).add(CreateOrderEvent(
                burial: widget.burial,
                date: widget.order["date"] ?? "",
                name: widget.order["name"],
                surname: widget.order["surname"],
                services: _servicesIds,
                items: _itemsIds,
                phone: _phone,
                email: widget.order["email"],
                comment: widget.order["comment"],
                amount: _amount,
                orderId: orderId,
                paymentId: ""));
            _timer = new Timer.periodic(Duration(seconds: 2), (Timer timer) {
              BlocProvider.of<ContentBloc>(context).add(CheckOrderStatusEvent(
                  burial: widget.burial, orderId: orderId));
            });
          },
          onLoadStart: (InAppWebViewController controller, String url) {},
          onLoadStop: (InAppWebViewController controller, String url) {},
        ),
        Loader()
      ]),
    );
  }
}
