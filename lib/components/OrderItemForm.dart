import 'package:app/api/v1/item.pb.dart';
import 'package:app/blocs/authentication/AuthenticationBloc.dart';
import 'package:app/blocs/content/Bloc.dart';
import 'package:app/components/Errors.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/components/FormTemplate.dart';
import 'package:app/services/navigation.dart';
//import 'package:app/services/way_for_pay.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
//import 'package:flutter_wayforpay_package/model/wayforpay_response.dart';

class OrderData {
  String name = "";
  String surname = "";
  List<Item> items = [];
  String phone = "";
  String email = "";
  String comment = "";

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "surname": this.surname,
      "items": this.items,
      "phone": this.phone,
      "email": this.email,
      "comment": this.comment
    };
  }
}

class OrderItemForm extends StatefulWidget {
  final Item item;

  OrderItemForm({this.item, Key key}) : super(key: key);

  @override
  State<OrderItemForm> createState() => _OrderItemFormState();
}

class _OrderItemFormState extends State<OrderItemForm> {
  OrderData _orderData = new OrderData();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final phoneController =
      new MaskedTextController(text: '+380', mask: '*00 000 000 00 00');
  bool _sumbitEnable = false;

  Map<String, bool> touched = {
    "name": false,
    "surname": false,
    "phone": false,
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
    _orderData.items.add(widget.item);
    final fullname =
        BlocProvider.of<AuthenticationBloc>(context).name.split(" ");
    _orderData.name = fullname[0];
    touched["name"] = true;
    if (fullname.length > 1) {
      _orderData.surname = fullname[1];
      touched["surname"] = true;
    }
    _orderData.phone = BlocProvider.of<AuthenticationBloc>(context).phone;
    phoneController.text = _orderData.phone;
    touched["phone"] = true;

    _nameFocusNode.addListener(() {
      if (!_nameFocusNode.hasFocus) {
        this.setState(() {
          touched["name"] = true;
        });
        _checkSubmit();
      }
    });
    _surnameFocusNode.addListener(() {
      if (!_surnameFocusNode.hasFocus) {
        this.setState(() {
          touched["surname"] = true;
        });
        _checkSubmit();
      }
    });
    _phoneFocusNode.addListener(() {
      if (!_phoneFocusNode.hasFocus) {
        this.setState(() {
          touched["phone"] = true;
        });
        _checkSubmit();
      }
    });
    _commentFocusNode.addListener(() {
      if (!_commentFocusNode.hasFocus) {
        this.setState(() {
          touched["comment"] = true;
        });
        _checkSubmit();
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

  _checkSubmit() {
    if (touched["name"] && touched["surname"] && touched["phone"]) {
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
        onChanged: this._checkSubmit,
        child:
            BlocBuilder<ContentBloc, ContentState>(builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      top: state is ContentErrorState
                          ? verticalScale(context, 20)
                          : verticalScale(context, 0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: state is ContentErrorState
                      ? Errors(errors: state.message)
                      : Container()),

              /////////////  Items  //////////////
              Padding(
                  padding: EdgeInsets.only(
                    top: verticalScale(context, 24.0),
                  ),
                  child: Center(
                    child: Text(widget.item.title,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF351916))),
                  )),
              Center(
                  child: Text(widget.item.article,
                      style:
                          TextStyle(fontSize: 12, color: Color(0xFF979797)))),

              /////////////  Name //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Name,
                      require: true,
                      form: TextFormField(
                        onTap: () {
                          setState(() {
                            touched["name"] = true;
                          });
                        },
                        onChanged: (value) {
                          _checkSubmit();
                        },
                        onSaved: (String inValue) {
                          this._orderData.name = inValue;
                        },
                        initialValue: _orderData.name,
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
                        validator: (String inValue) {
                          if (inValue == null || inValue.length == 0) {
                            return S.of(context).FieldIsRequired;
                          }
                          return null;
                        },
                      ))),

              /////////////  Surname //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Surname,
                      require: true,
                      form: TextFormField(
                        onTap: () {
                          setState(() {
                            touched["surname"] = true;
                          });
                          _checkSubmit();
                        },
                        onSaved: (String inValue) {
                          this._orderData.surname = inValue;
                        },
                        initialValue: _orderData.surname,
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
                        validator: (String inValue) {
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
                      require: true,
                      form: TextFormField(
                        style: Theme.of(context).textTheme.bodyText2,
                        onTap: () {
                          setState(() {
                            touched["phone"] = true;
                          });
                        },
                        onChanged: (value) {
                          _checkSubmit();
                        },
                        onSaved: (String inValue) {
                          this._orderData.phone = inValue;
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
                          if (inValue.length < 17) {
                            return S.of(context).WrongPhoneNumber;
                          }
                          return null;
                        },
                      ))),

              /////////////  Email  //////////////
              // Padding(
              //     padding: EdgeInsets.only(
              //         top: verticalScale(context, 17.0),
              //         left: scale(context, 48.0),
              //         right: scale(context, 48.0)),
              //     child: FormTemplate(
              //         label: S.of(context).EmailForMedia,
              //         form: TextFormField(
              //           style: Theme.of(context).textTheme.bodyText2,
              //           onTap: () {
              //             setState(() {
              //               touched["email"] = true;
              //             });
              //             _checkSubmit();
              //           },
              //           initialValue: _orderData.email,
              //           onSaved: (String inValue) {
              //             this._orderData.email = inValue;
              //           },
              //           onChanged: (value) {
              //             _checkSubmit();
              //           },
              //           cursorColor: Config().mainColor(1),
              //           keyboardType: TextInputType.emailAddress,
              //           decoration: InputDecoration(
              //             hintText: 'email@gmail.com',
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
              //           validator: (String inValue) {
              //             if (!RegExp(
              //                     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              //                 .hasMatch(inValue)) {
              //               return S.of(context).EmailNotValid;
              //             }
              //             return null;
              //           },
              //         ))),

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
                          _checkSubmit();
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
                      child: Text(
                          S.of(context).BuyItem +
                              " " +
                              widget.item.price.toInt().toString() +
                              " " +
                              S.of(context).UAH,
                          style: Theme.of(context).textTheme.button),
                      color: _sumbitEnable && !(state is ContentLoadingState)
                          ? Theme.of(context).primaryColor
                          : Color(0xFFDDDDDD),
                      elevation: 0,
                      onPressed: state is ContentLoadingState
                          ? () {
                              FocusScope.of(context).unfocus();
                            }
                          : () async {
                              FocusScope.of(context).unfocus();
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                Navigator.pushNamed(context, AppRouter.Payment,
                                    arguments: {
                                      "burial": null,
                                      "order": _orderData.toMap()
                                    });
                                // WayForPayResponse res = await payWithWayForPay(
                                //     context, _orderData.toMap());
                                // if (res != null && res.reasonCode == 1100) {
                                //   BlocProvider.of<ContentBloc>(context).add(
                                //       CreateOrderEvent(
                                //           burial: null,
                                //           name: _orderData.name,
                                //           surname: _orderData.surname,
                                //           services: [],
                                //           items: [widget.item.id],
                                //           phone: _orderData.phone
                                //                       .replaceAll(' ', '')
                                //                       .length >
                                //                   13
                                //               ? _orderData.phone
                                //                   .replaceAll(' ', '')
                                //                   .substring(0, 13)
                                //               : _orderData.phone
                                //                   .replaceAll(' ', ''),
                                //           email: _orderData.email,
                                //           comment: _orderData.comment,
                                //           amount: res.amount,
                                //           orderId: res.orderReference,
                                //           paymentId: res.paymentSystem));
                                // }
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
