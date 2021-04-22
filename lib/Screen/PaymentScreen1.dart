import 'package:app/api/v1/burial.pb.dart';
import 'package:app/blocs/content/Bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/generated/l10n.dart';

//sandbox_i40637018930
//sandbox_c5VQosgvbfdTn336TvYkNYPk2cckA9x1je8bS6Sw

//i94386358710
//Xr3X0kpxF8sMFcHyszhoPmpKRDuRS0ZCk1hfQKDy

class PaymentScreen extends StatefulWidget {
  final Burial burial;
  final Map<String, dynamic> order;

  PaymentScreen(this.burial, this.order);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  WebViewController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var responseData;

  @override
  Widget build(BuildContext context) {
    if (responseData != null) {
      FocusScope.of(context).unfocus();
      final List<int> _servicesIds = [];
      for (final service in widget.order["services"]) {
        _servicesIds.add(service.id);
      }
      final List<int> _itemsIds = [];
      if (widget.order["items"] != null) {
        for (final item in widget.order["items"]) {
          _itemsIds.add(item.id);
        }
      }
      final double _amount = responseData["amount"].toDouble();
      BlocProvider.of<ContentBloc>(context).add(CreateOrderEvent(
          burial: widget.burial,
          name: widget.order["name"],
          date: null,
          surname: widget.order["surname"],
          services: _servicesIds,
          items: _itemsIds,
          phone: widget.order["phone"].replaceAll(' ', '').substring(0, 13),
          email: widget.order["email"],
          comment: widget.order["comment"],
          amount: _amount,
          orderId: responseData["order_id"],
          paymentId: responseData["payment_id"].toString()));
      // _scaffoldKey.currentState
      //     .showSnackBar(SnackBar(content: Text(responseData["status"])));
      responseData = null;
    }
    final publicKey = "i17818302354";
    final privateKey = "XJBUFxCnspp1swZk8wOGGgfhEITn9eHfLzBJlqfP";
    final orderId = Uuid().v1();
    double _amount;
    if (widget.order["services"] != null) {
      _amount =
          widget.order["services"].fold(0, (curr, next) => curr + next.price);
    }
    if (widget.order["items"] != null) {
      _amount = widget.order["items"][0].price;
    }

    final liqData = {
      "version": 3,
      "public_key": publicKey,
      "action": "pay",
      "amount": _amount,
      "currency": "UAH",
      "description": "",
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
      body: WebView(
        initialUrl: 'about:blank',
        javascriptMode: JavascriptMode.unrestricted,
        javascriptChannels: Set.from([
          JavascriptChannel(
              name: 'messageHandler',
              onMessageReceived: (JavascriptMessage message) {
                final data = json.decode(message.message);
                if (data["status"] == "success") {
                  this.setState(() {
                    responseData = data;
                  });
                }
              })
        ]),
        onWebViewCreated: (WebViewController webviewController) {
          _controller = webviewController;
          _loadHtmlFromAssets();
        },
        onPageFinished: (String text) {
          _controller
              .evaluateJavascript('checkout("$base64Str", "$signature")');
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.arrow_upward),
      //   onPressed: () {
      //     _controller
      //         .evaluateJavascript('checkout("$base64Str", "$signature")');
      //   },
      // ),
    );
  }

  _loadHtmlFromAssets() async {
    String file = await rootBundle.loadString('assets/payment.html');
    _controller.loadUrl(Uri.dataFromString(file,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}
