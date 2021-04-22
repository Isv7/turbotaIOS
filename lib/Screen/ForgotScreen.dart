import 'package:app/components/ForgotForm.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/blocs/authentication/Bloc.dart';
import 'package:app/components/ConfirmPhoneForm.dart';
import 'package:app/components/ChangePasswordForm.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotScreen extends StatefulWidget {
  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  String phone = "";
  String id = "";

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
                    Padding(
                        padding: EdgeInsets.only(
                            top: verticalScale(context, 15),
                            bottom: verticalScale(context, 15)),
                        child: Text(S.of(context).ForgotPassword + "?",
                            style: Theme.of(context).textTheme.headline1)),
                    Padding(
                        padding: EdgeInsets.only(
                            top: verticalScale(context, 12),
                            left: scale(context, 30.0),
                            right: scale(context, 30.0)),
                        child: Text(S.of(context).RecoveryPrompt,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyText1)),
                    ForgotForm(),
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
          BlocBuilder<AuthenticationBloc, AuthenticationState>(
              builder: (context, state) {
            return state is AuthenticationPasswordChanging ||
                    state is AuthenticationPasswordChangingErrorState
                ? AlertDialog(
                    title: Text(S.of(context).ChangePassword),
                    titleTextStyle: TextStyle(color: Colors.black),
                    content: CahngePasswordForm())
                : Container();
          }),
        ],
      ),
    ));
  }
}
