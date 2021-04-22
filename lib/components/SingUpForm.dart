import 'dart:io';

import 'package:app/blocs/authentication/AuthenticationBloc.dart';
import 'package:app/blocs/authentication/AuthenticationEvent.dart';
import 'package:app/blocs/authentication/AuthenticationState.dart';
import 'package:app/components/Errors.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/services/navigation.dart';
import 'package:app/components/FormTemplate.dart';
import 'package:app/Screen/FacebookWebViewScreen.dart';

import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class SingUpData {
  String name = "";
  String phone = "";
  String password = "";
}

class SingUpForm extends StatefulWidget {
  SingUpForm({Key key}) : super(key: key);

  @override
  State<SingUpForm> createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {
  SingUpData _registerData = new SingUpData();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final TextEditingController passwordController = new TextEditingController();
  final phoneController =
      new MaskedTextController(text: '+380', mask: '*00 000 000 00 00');
  bool _sumbitEnable = false;
  bool _passwordSecureText = true;

  Map<String, bool> touched = {"phone": false, "password": false};

  final _nameFocusNode = FocusNode();
  final _phoneFocusNode = FocusNode();

  loginWithFacebook() async {
    String your_client_id = "365195554897586";
    String your_redirect_url =
        "https://www.facebook.com/connect/login_success.html";
    String result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FacebookWebViewScreen(
                  selectedUrl:
                      'https://www.facebook.com/dialog/oauth?client_id=$your_client_id&redirect_uri=$your_redirect_url&response_type=token&scope=email,public_profile,',
                ),
            maintainState: true));
    BlocProvider.of<AuthenticationBloc>(context)
        .add(AuthenticationFacebookSignInEvent(facebookSignInResult: result));
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
    _nameFocusNode.dispose();
    _phoneFocusNode.dispose();
    super.dispose();
  }

  checkSubmit() {
    if (touched["phone"] && touched["password"]) {
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
                      top: verticalScale(context, 0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: state is AuthenticationLoginErrorState
                      ? Errors(errors: state.message)
                      : Container()),

              /////////////  Name //////////////
              // Padding(
              //     padding: EdgeInsets.only(
              //         top: verticalScale(context, 17.0),
              //         left: scale(context, 48.0),
              //         right: scale(context, 48.0)),
              //     child: FormTemplate(
              //         label: S.of(context).Name,
              //         form: TextFormField(
              //           onTap: () {
              //             setState(() {
              //               touched["name"] = true;
              //             });
              //             checkSubmit();
              //           },
              //           onSaved: (String inValue) {
              //             this._registerData.name = inValue;
              //           },
              //           style: Theme.of(context).textTheme.bodyText2,
              //           cursorColor: Config().mainColor(1),
              //           decoration: InputDecoration(
              //             hintText: 'Імя',
              //             hintStyle: Theme.of(context)
              //                 .textTheme
              //                 .bodyText2
              //                 .apply(color: Color(0xFFBBBBBB)),
              //             isDense: true,
              //             contentPadding: EdgeInsets.only(
              //               left: scale(context, 9),
              //               right: scale(context, 9),
              //               top: verticalScale(context, 10),
              //               bottom: verticalScale(context, 10),
              //             ),
              //             border: InputBorder.none,
              //             errorBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.red),
              //             ),
              //             errorStyle: TextStyle(
              //               height: 0.5,
              //               color: Colors.red,
              //               fontSize: 10,
              //             ),
              //             filled: true,
              //             fillColor: Colors.white,
              //           ),
              //         ))),

              /////////////  Phone //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Phone,
                      form: TextFormField(
                        style: Theme.of(context).textTheme.bodyText2,
                        onTap: () {
                          setState(() {
                            touched["phone"] = true;
                          });
                          checkSubmit();
                        },
                        onSaved: (String inValue) {
                          this._registerData.phone = inValue;
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
                          if (inValue.substring(0, 17).length != 17) {
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
                      form: TextFormField(
                        style: Theme.of(context).textTheme.bodyText2,
                        onTap: () {
                          setState(() {
                            touched["password"] = true;
                          });
                          checkSubmit();
                        },
                        onSaved: (String inValue) {
                          this._registerData.password = inValue;
                        },
                        controller: passwordController,
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
                        validator: (String inValue) {
                          if (inValue.length < 8) {
                            return S.of(context).PasswordMinLength;
                          }
                          return null;
                        },
                      ))),

              /////////////// Confirm Password////////////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Password_2,
                      form: TextFormField(
                        style: Theme.of(context).textTheme.bodyText2,
                        onTap: () {
                          setState(() {
                            touched["confirm_password"] = true;
                          });
                          checkSubmit();
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
                        validator: (String inValue) {
                          if (passwordController.value.text.toString() !=
                              inValue) {
                            return S.of(context).PasswordsNotEqual;
                          }
                          return null;
                        },
                      ))),

              /////////////  Register Button///////////////////
              Padding(
                padding: EdgeInsets.only(
                    top: verticalScale(context, 24.0),
                    left: scale(context, 30.0),
                    right: scale(context, 30.0),
                    bottom: scale(context, 20.0)),
                child: SizedBox(
                    width: double.infinity,
                    height: verticalScale(context, 48),
                    child: RaisedButton(
                      child: Text(S.of(context).Sign_upp,
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
                                    .add(AuthenticationRegisterEvent(
                                        name: _registerData.name,
                                        phone: _registerData.phone
                                            .replaceAll(' ', '')
                                            .substring(0, 13),
                                        password: _registerData.password));
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
                          child: Text(S.of(context).Sign_uppfb,
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
