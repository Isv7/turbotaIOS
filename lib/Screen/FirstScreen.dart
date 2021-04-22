import 'package:app/components/LoginForm.dart';
import 'package:app/config/config.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({this.color});

  final Color color;

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                  children: <Widget>[
                    Padding(
                        padding:
                            EdgeInsets.only(top: verticalScale(context, 36.0)),
                        child: Image.asset(
                          'assets/img/logo_ready_1.png',
                        )),
                    LoginForm(),
                  ])
            ])
          ])),
        ],
      ),
    ));
  }
}
