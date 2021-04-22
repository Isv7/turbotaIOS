import 'dart:io';

import 'package:app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class PolicyScreen extends StatefulWidget {
  @override
  PolicyScreenState createState() => new PolicyScreenState();
}

class PolicyScreenState extends State<PolicyScreen> {
  var url = "https://turbota.net.ua/privacy_policy.html";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      withZoom: true,
      hidden: true,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
                Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text(S.of(context).Policy,
            maxLines: 2, style: Theme.of(context).textTheme.headline2),
        titleSpacing: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
