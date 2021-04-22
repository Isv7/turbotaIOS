import 'package:app/components/FormTemplate.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/services/navigation.dart';
import 'package:app/blocs/authentication/Bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotData {
  String phone = "";
}

class ForgotForm extends StatefulWidget {
  ForgotForm({Key key}) : super(key: key);

  @override
  State<ForgotForm> createState() => _ForgotFormState();
}

class _ForgotFormState extends State<ForgotForm> {
  ForgotData _forgotData = new ForgotData();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final phoneController =
      new MaskedTextController(text: '+380', mask: '*00 000 000 00 00');
  bool _sumbitEnable = false;

  Map<String, bool> touched = {
    "phone": false,
  };

  final _phoneFocusNode = FocusNode();

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
                      top: verticalScale(context, 20.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: Container()),

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
                          this._forgotData.phone = inValue;
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

              Padding(
                padding: EdgeInsets.only(
                    top: verticalScale(context, 16.0),
                    left: scale(context, 48.0),
                    right: scale(context, 48.0)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                        color: Colors.white.withOpacity(0.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AppRouter.First);
                          },
                          child: Text(
                            S.of(context).Login,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        )),
                    Material(
                        color: Colors.white.withOpacity(0.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AppRouter.SingUp);
                          },
                          child: Text(
                            S.of(context).Sign_up,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ))
                  ],
                ),
              ),

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
                      child: Text(S.of(context).RecoveryPassword,
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
                                    .add(AuthenticationForgotPasswordEvent(
                                        phone: _forgotData.phone
                                            .replaceAll(' ', '')
                                            .substring(0, 13)));
                              }
                            },
                      shape: new RoundedRectangleBorder(
                          borderRadius:
                              new BorderRadius.circular(scale(context, 5.0))),
                    )),
              ),
            ],
          );
        }));
  }
}
