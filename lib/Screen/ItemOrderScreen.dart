import 'package:app/api/v1/item.pb.dart';
import 'package:app/components/OrderItemForm.dart';
import 'package:app/generated/l10n.dart';

import 'package:flutter/material.dart';

class ItemOrderScreen extends StatefulWidget {
  final Item item;

  ItemOrderScreen(this.item);
  @override
  _ItemOrderScreenState createState() => _ItemOrderScreenState();
}

class _ItemOrderScreenState extends State<ItemOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).ItemOrder),
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
              child: Column(children: <Widget>[
            Stack(children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[OrderItemForm(item: widget.item)]),
            ])
          ])),
        ],
      ),
    ));
  }
}
