import 'package:app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'package:app/blocs/authentication/Bloc.dart';
import 'package:app/config/config.dart';

class ChangePasswordData {
  String password = "";
}

class CahngePasswordForm extends StatefulWidget {
  CahngePasswordForm({Key key}) : super(key: key);

  @override
  State<CahngePasswordForm> createState() => _CahngePasswordFormState();
}

class _CahngePasswordFormState extends State<CahngePasswordForm> {
  ChangePasswordData _changePasswordData = new ChangePasswordData();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Map<String, String> changePasswordErrors = {
      "User not exist": S.of(context).UserNotExist,
      "User not active": S.of(context).UserNotActive,
    };

    return Form(
        key: this._formKey,
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              /////////////// password////////////////////
              Padding(
                  padding: EdgeInsets.only(top: verticalScale(context, 18)),
                  child: TextFormField(
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .apply(color: Colors.black),
                    cursorColor: Config().mainDarkColor(1),
                    onSaved: (String inValue) {
                      this._changePasswordData.password = inValue;
                    },
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: S.of(context).Password,
                      errorMaxLines: 2,
                      contentPadding:
                          EdgeInsets.only(top: verticalScale(context, 7.0)),
                      labelStyle: Theme.of(context).textTheme.bodyText1,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Config().inputBorderColor(1), width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Config().inputBorderColor(1), width: 2),
                      ),
                    ),
                    validator: (String inValue) {
                      if (inValue.length < 8) {
                        return S.of(context).PasswordMinLength;
                      }
                      return null;
                    },
                  )),

              /////////////// confirm password////////////////////
              Padding(
                  padding: EdgeInsets.only(top: verticalScale(context, 20)),
                  child: TextFormField(
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .apply(color: Colors.black),
                    cursorColor: Config().mainDarkColor(1),
                    onSaved: (String inValue) {
                      this._changePasswordData.password = inValue;
                    },
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: S.of(context).ConfirmPassword,
                      contentPadding:
                          EdgeInsets.only(top: verticalScale(context, 7.0)),
                      labelStyle: Theme.of(context).textTheme.bodyText1,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Config().inputBorderColor(1), width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Config().inputBorderColor(1), width: 2),
                      ),
                    ),
                    validator: (String inValue) {
                      if (passwordController.value.text.toString() != inValue) {
                        return S.of(context).PasswordsNotEqual;
                      }
                      return null;
                    },
                  )),

              /////////////  Submit Button///////////////////
              Padding(
                padding: EdgeInsets.only(top: verticalScale(context, 20.0)),
                child: SizedBox(
                    width: double.infinity,
                    height: verticalScale(context, 40),
                    child: RaisedButton(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: verticalScale(context, 8.0),
                          left: scale(context, 10.0),
                          right: scale(context, 10.0),
                          bottom: verticalScale(context, 8.0),
                        ),
                        child: Text(S.of(context).Save,
                            style: Theme.of(context).textTheme.caption),
                      ),
                      color: Config().mainColor(1),
                      onPressed: state is AuthenticationLoading
                          ? () {
                              FocusScope.of(context).unfocus();
                            }
                          : () {
                              FocusScope.of(context).unfocus();
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                BlocProvider.of<AuthenticationBloc>(context)
                                    .add(AuthenticationChangePasswordEvent(
                                        password:
                                            _changePasswordData.password));
                              }
                            },
                      shape: new RoundedRectangleBorder(
                          borderRadius:
                              new BorderRadius.circular(scale(context, 5.0))),
                    )),
              ),
              state is AuthenticationPasswordChangingErrorState
                  ? Container(
                      padding:
                          EdgeInsets.only(top: verticalScale(context, 8.0)),
                      alignment: Alignment.center,
                      child: Text(
                        changePasswordErrors.containsKey(state.message)
                            ? changePasswordErrors[state.message]
                            : state.message,
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: scale(context, 12.0)),
                      ))
                  : Container(),
            ],
          );
        }));
  }
}
