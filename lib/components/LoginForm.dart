import 'dart:io';

import 'package:app/blocs/authentication/Bloc.dart';
import 'package:app/components/Errors.dart';
import 'package:app/components/FormTemplate.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/services/navigation.dart';
import 'package:app/Screen/FacebookWebViewScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class LoginData {
  String phone = "";
  String password = "";
}

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  LoginData _loginData = new LoginData();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final TextEditingController passwordController = new TextEditingController();
  final phoneController =
      new MaskedTextController(text: '+380', mask: '*00 000 000 00 00');
  bool _sumbitEnable = false;
  bool _passwordSecureText = true;

  Map<String, bool> touched = {
    "phone": false,
  };

  final _phoneFocusNode = FocusNode();

  loginWithFacebook() async {
    BlocProvider.of<AuthenticationBloc>(context)
        .add(AuthenticationFacebookSignInEvent());
  }

  @override
  void initState() {
    super.initState();
    _phoneFocusNode.addListener(() {
      if (!_phoneFocusNode.hasFocus) {
        this.setState(() {
          touched["phone"] = true;
        });
        checkSubmit();
      }
    });
  }

  @override
  void dispose() {
    _phoneFocusNode.dispose();
    super.dispose();
  }

  checkSubmit() {
    if (touched["phone"]) {
      if (_formKey.currentState.validate()) {
        this.setState(() {
          _sumbitEnable = true;
        });
      } else {
        _sumbitEnable = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: this._formKey,
        onChanged: this.checkSubmit,
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 60.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: state is AuthenticationLoginErrorState
                      ? Errors(errors: state.message)
                      : Container()),

              /////////////  Phone //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Phone,
                      tooltip: S.of(context).Phone_tooltip,
                      form: TextFormField(
                        style: Theme.of(context).textTheme.bodyText2,
                        onTap: () {
                          setState(() {
                            touched["phone"] = true;
                          });
                          checkSubmit();
                        },
                        onSaved: (String inValue) {
                          this._loginData.phone = inValue;
                        },
                        controller: phoneController,
                        cursorColor: Config().mainColor(1),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: '+38 0xx xxx xx xx',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .apply(color: Color(0xFFBBBBBB)),
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                            left: scale(context, 9),
                            right: scale(context, 9),
                            top: verticalScale(context, 10),
                            bottom: verticalScale(context, 10),
                          ),
                          border: InputBorder.none,
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          errorStyle: TextStyle(
                            height: 0.5,
                            color: Colors.red,
                            fontSize: 10,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        validator: (String inValue) {
                          if (inValue.length != 17) {
                            return S.of(context).WrongPhoneNumber;
                          }
                          return null;
                        },
                      ))),

              /////////////// Password////////////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Password,
                      tooltip: S.of(context).Password_tooltip,
                      form: TextFormField(
                        style: Theme.of(context).textTheme.bodyText2,
                        onSaved: (String inValue) {
                          this._loginData.password = inValue;
                        },
                        initialValue: "",
                        obscureText: _passwordSecureText,
                        cursorColor: Config().mainColor(1),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "• • • • • • • •",
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .apply(color: Color(0xFFBDBDBD)),
                          isDense: true,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _passwordSecureText = !_passwordSecureText;
                              });
                            },
                            icon: Icon(
                              _passwordSecureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: 16,
                            ),
                          ),
                          suffixIconConstraints: BoxConstraints(maxHeight: 35),
                          contentPadding: EdgeInsets.only(
                            left: scale(context, 9),
                            right: scale(context, 9),
                            top: verticalScale(context, 10),
                            bottom: verticalScale(context, 10),
                          ),
                          border: InputBorder.none,
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          errorStyle: TextStyle(
                            height: 0.5,
                            color: Colors.red,
                            fontSize: 10,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ))),

              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: verticalScale(context, 5.0),
                          right: scale(context, 48.0)),
                      child: Material(
                          color: Colors.white.withOpacity(0.0),
                          child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, AppRouter.Forgot);
                              },
                              child: Text(S.of(context).ForgotPassword + "?",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF795548))))))),

              /////////////  Login Button///////////////////
              Padding(
                padding: EdgeInsets.only(
                    top: verticalScale(context, 24.0),
                    left: scale(context, 30.0),
                    right: scale(context, 30.0),
                    bottom: scale(context, 10.0)),
                child: SizedBox(
                    width: double.infinity,
                    height: verticalScale(context, 48),
                    child: RaisedButton(
                      child: Text(S.of(context).Login,
                          style: Theme.of(context).textTheme.button),
                      color: _sumbitEnable && !(state is AuthenticationLoading)
                          ? Theme.of(context).primaryColor
                          : Color(0xFFDDDDDD),
                      elevation: 0,
                      onPressed: state is AuthenticationLoading
                          ? () {
                              FocusScope.of(context).unfocus();
                            }
                          : () {
                              FocusScope.of(context).unfocus();
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                BlocProvider.of<AuthenticationBloc>(context)
                                    .add(AuthenticationLogInEvent(
                                        login: _loginData.phone
                                            .replaceAll(' ', '')
                                            .substring(0, 13),
                                        password: _loginData.password));
                              }
                            },
                      shape: new RoundedRectangleBorder(
                          borderRadius:
                              new BorderRadius.circular(scale(context, 5.0))),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Material(
                      color: Colors.white.withOpacity(0.0),
                      child: InkWell(
                          onTap: () {
                            loginWithFacebook();
                          },
                          child: Text(S.of(context).Login_fb,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  letterSpacing: 0.1)))),
                  SizedBox(width: scale(context, 20)),
                  Material(
                      color: Colors.white.withOpacity(0.0),
                      child: InkWell(
                        onTap: () {
                          loginWithFacebook();
                        },
                        child: SvgPicture.asset('assets/img/facebook.svg',
                            width: scale(context, 30)),
                      )),
                ],
              ),
              if (Platform.isIOS == true)
                Padding(
                    padding: EdgeInsets.only(
                        top: verticalScale(context, 10),
                        left: scale(context, 30),
                        right: scale(context, 30)),
                    child: SignInWithAppleButton(
                      style: SignInWithAppleButtonStyle.whiteOutlined,
                      iconAlignment: IconAlignment.center,
                      onPressed: () {
                        BlocProvider.of<AuthenticationBloc>(context)
                            .add(AuthenticationAppleSignInEvent());
                      },
                    )),

              ///////////// Register Button ///////////////////
              Padding(
                padding: EdgeInsets.only(
                    top: verticalScale(context, 10.0),
                    left: scale(context, 30.0),
                    right: scale(context, 30.0)),
                child: SizedBox(
                    width: double.infinity,
                    height: verticalScale(context, 48),
                    child: RaisedButton(
                      child: Text(S.of(context).Sign_up,
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .apply(color: Color(0XFFD75701))),
                      color: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouter.SingUp);
                      },
                      shape: new RoundedRectangleBorder(
                          borderRadius:
                              new BorderRadius.circular(scale(context, 5.0)),
                          side: BorderSide(color: Color(0xFFD76701), width: 2)),
                    )),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 18),
                      left: scale(context, 20),
                      right: scale(context, 20),
                      bottom: verticalScale(context, 10)),
                  child: Center(
                      child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AppRouter.TermsOfUse);
                          },
                          child: Text(S.of(context).TermsOfUse,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyText2))))
            ],
          );
        }));
  }
}
