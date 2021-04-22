import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/blocs/authentication/Bloc.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';

class ConfirmPhoneData {
  String code = "";
}

class ConfirmPhoneForm extends StatefulWidget {
  final String phone;
  final String id;

  ConfirmPhoneForm({@required this.phone, @required this.id, Key key})
      : super(key: key);

  @override
  State<ConfirmPhoneForm> createState() => _ConfirmPhoneFormState();
}

class _ConfirmPhoneFormState extends State<ConfirmPhoneForm> {
  ConfirmPhoneData _confirmPhoneData = new ConfirmPhoneData();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Map<String, String> confirmPhoneErrors = {
      "firebaseAuth": S.of(context).FirebaseAuthError,
      "error": S.of(context).PhoneConfirmError,
      "invalid-verification-code": S.of(context).PhoneConfirmError,
      "quotaExceeded": S.of(context).QuotaExceeded
    };

    return Form(
        key: this._formKey,
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              /////////////// code////////////////////
              TextFormField(
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .apply(color: Colors.black),
                cursorColor: Config().mainDarkColor(1),
                onSaved: (String inValue) {
                  this._confirmPhoneData.code = inValue;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
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
              ),

              /////////////  Submit Button///////////////////
              Padding(
                padding: EdgeInsets.only(top: verticalScale(context, 20.0)),
                child: SizedBox(
                    width: double.infinity,
                    height: verticalScale(context, 40),
                    child: RaisedButton(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: scale(context, 10.0),
                          right: scale(context, 10.0),
                          bottom: verticalScale(context, 8.0),
                        ),
                        child: Text(S.of(context).Confirmation,
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .apply(color: Colors.white)),
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
                                    .add(AuthenticationConfirmPhoneCode(
                                        phone: this.widget.phone,
                                        id: this.widget.id,
                                        code: _confirmPhoneData.code));
                              }
                            },
                      shape: new RoundedRectangleBorder(
                          borderRadius:
                              new BorderRadius.circular(scale(context, 5.0))),
                    )),
              ),
              state is VerificationCodeErrorState
                  ? Container(
                      padding:
                          EdgeInsets.only(top: verticalScale(context, 8.0)),
                      alignment: Alignment.center,
                      child: Text(
                        confirmPhoneErrors.containsKey(state.code)
                            ? confirmPhoneErrors[state.code]
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
