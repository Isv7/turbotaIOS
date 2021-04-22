import 'package:app/api/v1/burial.pb.dart';
import 'package:app/api/v1/service.pb.dart';
import 'package:app/blocs/authentication/AuthenticationBloc.dart';
import 'package:app/blocs/content/Bloc.dart';
import 'package:app/components/Errors.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/components/FormTemplate.dart';
import 'package:app/services/navigation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class OrderData {
  String name = "";
  String surname = "";
  List<Service> services = [];
  String phone = "";
  String email = "";
  String comment = "";

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "surname": this.surname,
      "services": this.services,
      "phone": this.phone,
      "email": this.email,
      "comment": this.comment
    };
  }
}

class OrderCleaningForm extends StatefulWidget {
  final Burial burial;
  final List<Service> services;

  OrderCleaningForm({this.burial, this.services, Key key}) : super(key: key);

  @override
  State<OrderCleaningForm> createState() => _OrderCleaningFormState();
}

class _OrderCleaningFormState extends State<OrderCleaningForm> {
  OrderData _orderData = new OrderData();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final phoneController =
      new MaskedTextController(text: '+380', mask: '*00 000 000 00 00');
  bool _sumbitEnable = false;
  var _items;

  Map<String, bool> touched = {
    "name": false,
    "surname": false,
    "phone": false,
    "email": false,
    "comment": false
  };

  final _nameFocusNode = FocusNode();
  final _surnameFocusNode = FocusNode();
  final _phoneFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _commentFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _orderData.phone = BlocProvider.of<AuthenticationBloc>(context).phone;
    _items = widget.services
        .map((service) => MultiSelectItem<Service>(service, service.title))
        .toList();
    _nameFocusNode.addListener(() {
      if (!_nameFocusNode.hasFocus) {
        this.setState(() {
          touched["name"] = true;
        });
        checkSubmit();
      }
    });
    _surnameFocusNode.addListener(() {
      if (!_surnameFocusNode.hasFocus) {
        this.setState(() {
          touched["surname"] = true;
        });
        checkSubmit();
      }
    });
    _phoneFocusNode.addListener(() {
      if (!_phoneFocusNode.hasFocus) {
        this.setState(() {
          touched["phone"] = true;
        });
        checkSubmit();
      }
    });
    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) {
        this.setState(() {
          touched["email"] = true;
        });
        checkSubmit();
      }
    });
    _commentFocusNode.addListener(() {
      if (!_commentFocusNode.hasFocus) {
        this.setState(() {
          touched["comment"] = true;
        });
        checkSubmit();
      }
    });
  }

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _surnameFocusNode.dispose();
    _phoneFocusNode.dispose();
    _emailFocusNode.dispose();
    _commentFocusNode.dispose();
    super.dispose();
  }

  checkSubmit() {
    if (touched["name"] &&
        touched["surname"] &&
        touched["phone"] &&
        touched["email"]) {
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
        child:
            BlocBuilder<ContentBloc, ContentState>(builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: state is ContentErrorState
                      ? Errors(errors: state.message)
                      : Container()),

              /////////////  Name //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Name,
                      form: TextFormField(
                        onTap: () {
                          setState(() {
                            touched["name"] = true;
                          });
                          checkSubmit();
                        },
                        onSaved: (String inValue) {
                          this._orderData.name = inValue;
                        },
                        initialValue: this._orderData.name,
                        style: Theme.of(context).textTheme.bodyText2,
                        cursorColor: Config().mainColor(1),
                        decoration: InputDecoration(
                          hintText: S.of(context).Name,
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
                      ))),

              /////////////  Surname //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Surname,
                      form: TextFormField(
                        onTap: () {
                          setState(() {
                            touched["surname"] = true;
                          });
                          checkSubmit();
                        },
                        onSaved: (String inValue) {
                          this._orderData.surname = inValue;
                        },
                        initialValue: this._orderData.surname,
                        style: Theme.of(context).textTheme.bodyText2,
                        cursorColor: Config().mainColor(1),
                        decoration: InputDecoration(
                          hintText: S.of(context).Surname,
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
                      ))),

              /////////////  Services  //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Services,
                      form: MultiSelectDialogField<Service>(
                        items: _items,
                        title: Text(S.of(context).Services),
                        selectedColor: Config().mainColor(1),
                        buttonIcon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 14,
                        ),
                        buttonText: Text(
                          S.of(context).ServicesPrompt,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .apply(color: Color(0xFFBBBBBB)),
                        ),
                        confirmText: Text(S.of(context).Ok),
                        cancelText: Text(S.of(context).Cancel),
                        onConfirm: (results) {
                          _orderData.services = results;
                        },
                        validator: (inValue) {
                          if (inValue == null || inValue.length == 0) {
                            return S.of(context).FieldIsRequired;
                          }
                          return null;
                        },
                      ))),

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
                          this._orderData.phone = inValue;
                        },
                        initialValue: this._orderData.phone,
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

              /////////////  Email  //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).EmailForMedia,
                      form: TextFormField(
                        style: Theme.of(context).textTheme.bodyText2,
                        onTap: () {
                          setState(() {
                            touched["email"] = true;
                          });
                          checkSubmit();
                        },
                        onSaved: (String inValue) {
                          this._orderData.email = inValue;
                        },
                        cursorColor: Config().mainColor(1),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'email@gmail.com',
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
                          if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(inValue)) {
                            return S.of(context).EmailNotValid;
                          }
                          return null;
                        },
                      ))),

              /////////////  Comments  //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Comment,
                      height: 60,
                      form: TextFormField(
                        style: Theme.of(context).textTheme.bodyText2,
                        onTap: () {
                          setState(() {
                            touched["comment"] = true;
                          });
                          checkSubmit();
                        },
                        onSaved: (String inValue) {
                          this._orderData.comment = inValue;
                        },
                        initialValue: this._orderData.comment,
                        cursorColor: Config().mainColor(1),
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: S.of(context).Comment,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .apply(color: Color(0xFFBBBBBB)),
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                              left: scale(context, 9),
                              right: scale(context, 9),
                              top: verticalScale(context, 10),
                              bottom: verticalScale(context, 10)),
                          border: InputBorder.none,
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.5, color: Color(0xFFBE0000)),
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

              /////////////  Submit Button///////////////////
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
                      child: Text(S.of(context).OrderCleaning,
                          style: Theme.of(context).textTheme.button),
                      color: _sumbitEnable && !(state is ContentLoadingState)
                          ? Theme.of(context).primaryColor
                          : Color(0xFFDDDDDD),
                      elevation: 0,
                      onPressed: state is ContentLoadingState
                          ? () {
                              FocusScope.of(context).unfocus();
                            }
                          : () {
                              FocusScope.of(context).unfocus();
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                // Navigator.pushNamed(context, AppRouter.Payment,
                                //     arguments: {
                                //       "burial": this.widget.burial,
                                //       "order": _orderData.toMap()
                                //     });
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
