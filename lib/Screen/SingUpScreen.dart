import 'dart:io';

import 'package:app/blocs/authentication/Bloc.dart';
import 'package:app/components/SingUpForm.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/components/ConfirmPhoneForm.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingUpScreen extends StatefulWidget {
  SingUpScreen({this.color});

  final Color color;

  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  String phone = "";
  String id = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(
              Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
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
                  children: <Widget>[
                    Padding(
                        padding:
                            EdgeInsets.only(top: verticalScale(context, 16.0)),
                        child: Image.asset(
                          'assets/img/logo_ready_1.png',
                        )),
                    SingUpForm(),
                  ])
            ])
          ])),
          Align(
              alignment: Alignment.bottomCenter,
              child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  builder: (context, state) {
                if (state is PhoneVirifying) {
                  phone = state.phone;
                  id = state.id;
                }
                return state is PhoneVirifying ||
                        state is VerificationCodeErrorState
                    ? AlertDialog(
                        title: Text(S.of(context).GiveCode),
                        titleTextStyle: TextStyle(color: Colors.black),
                        content: ConfirmPhoneForm(phone: phone, id: id))
                    : Container();
              })),
        ],
      ),
    ));
  }
}
