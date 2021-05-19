import 'package:app/api/v1/burial.pb.dart';
import 'package:app/api/v1/service.pb.dart';
import 'package:app/blocs/authentication/AuthenticationBloc.dart';
import 'package:app/blocs/content/Bloc.dart';
import 'package:app/components/Errors.dart';
import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/components/FormTemplate.dart';
import 'package:app/services/way_for_pay.dart';
import '../services/custom_icons.dart';
import 'package:app/services/navigation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_wayforpay_package/model/wayforpay_response.dart';
import 'package:expandable/expandable.dart';
import 'dart:math';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:intl/intl.dart';

class OrderData {
  String name = "";
  String surname = "";
  List<Service> services = [];
  String date = "";
  String phone = "";
  String email = "";
  String comment = "";

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "surname": this.surname,
      "services": this.services,
      "date": this.date,
      "phone": this.phone,
      "email": this.email,
      "comment": this.comment
    };
  }
}

class OrderServiceForm extends StatefulWidget {
  final Burial burial;
  final List<Service> services;
  final prevOrder;

  OrderServiceForm({this.burial, this.services, this.prevOrder, Key key})
      : super(key: key);

  @override
  State<OrderServiceForm> createState() => _OrderServiceFormState();
}

class _OrderServiceFormState extends State<OrderServiceForm> {
  OrderData _orderData = new OrderData();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final phoneController =
      new MaskedTextController(text: '+380', mask: '*00 000 000 00 00');
  TextEditingController _dateController = TextEditingController();
  bool _sumbitEnable = false;
  var servicesWidgets = <Widget>[];
  var selectedServicesWidgets = <Widget>[];
  List<bool> _selectedServices = [];

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
    if (widget.prevOrder != null) {
      _orderData.name = widget.prevOrder.name;
      _orderData.surname = widget.prevOrder.surname;
      _orderData.phone = widget.prevOrder.phone;
      phoneController.text = widget.prevOrder.phone;
      _orderData.email = widget.prevOrder.email;
      _orderData.comment = widget.prevOrder.comment;
      touched["name"] = true;
      touched["surname"] = true;
      touched["phone"] = true;
      touched["email"] = true;
      for (var i = 0; i < widget.services.length; i++) {
        final index = widget.prevOrder.services
            .indexWhere((element) => element.id == widget.services[i].id);
        if (index >= 0) {
          this.setState(() {
            _sumbitEnable = true;
            _selectedServices.add(true);
          });
        } else {
          _selectedServices.add(false);
        }
      }
    } else {
      if (BlocProvider.of<AuthenticationBloc>(context).name != null) {
        final fullname =
            BlocProvider.of<AuthenticationBloc>(context).name.split(" ");
        _orderData.name = fullname[0];
        touched["name"] = true;
        if (fullname.length > 1) {
          _orderData.surname = fullname[1];
          touched["surname"] = true;
        }
      }
      _orderData.phone = BlocProvider.of<AuthenticationBloc>(context).phone;
      phoneController.text = _orderData.phone;
      touched["phone"] = true;
      for (var i = 0; i < widget.services.length; i++) {
        if (widget.services[i].selected) {
          this.setState(() {
            _sumbitEnable = true;
            _selectedServices.add(true);
          });
        } else {
          _selectedServices.add(false);
        }
      }
    }
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
    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) {
        this.setState(() {
          touched["email"] = true;
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
    phoneController.addListener(onValueChange);
  }

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _surnameFocusNode.dispose();
    _phoneFocusNode.dispose();
    _emailFocusNode.dispose();
    _commentFocusNode.dispose();
    phoneController.dispose();
    super.dispose();
  }

  onValueChange() {
    if (phoneController.selection.start < 0) {
      phoneController.selection = new TextSelection.fromPosition(
          new TextPosition(offset: phoneController.text.length));
    }
  }

  _checkSubmit() {
    if (touched["name"] &&
        touched["surname"] &&
        touched["phone"] &&
        touched["email"]) {
      final index = _selectedServices.indexWhere((element) => element == true);
      if (_formKey.currentState.validate() && index >= 0) {
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
    servicesWidgets = [];
    selectedServicesWidgets = [];

    servicesWidgets.add(
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          width: 28.0,
        ),
        Expanded(
            flex: 7,
            child: Padding(
                padding: EdgeInsets.only(
                    left: scale(context, 5), top: verticalScale(context, 3)),
                child: Text(
                  S.of(context).Title,
                  style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.9,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.5)),
                ))),
        Expanded(
            flex: 3,
            child: Padding(
                padding: EdgeInsets.only(
                    left: scale(context, 5), top: verticalScale(context, 3)),
                child: Text(
                  S.of(context).Price,
                  style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.9,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.5)),
                )))
      ]),
    );
    servicesWidgets.add(Divider());
    for (var i = 0; i < widget.services.length; i++) {
      servicesWidgets.add(
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
              height: 20.0,
              width: 20.0,
              child: Checkbox(
                checkColor: Colors.white,
                activeColor: Color(0xFFFF8908),
                visualDensity: VisualDensity.comfortable,
                value: _selectedServices[i],
                onChanged: (bool value) {
                  setState(() {
                    _selectedServices[i] = value;
                  });
                },
              )),
          Expanded(
              flex: 7,
              child: Material(
                  color: Colors.white.withOpacity(0.0),
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedServices[i] = !_selectedServices[i];
                          _checkSubmit();
                        });
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: scale(context, 8)),
                          child: Text(
                            widget.services[i].title,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ))))),
          Expanded(
              flex: 2,
              child: Material(
                  color: Colors.white.withOpacity(0.0),
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedServices[i] = !_selectedServices[i];
                          _checkSubmit();
                        });
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: scale(context, 5)),
                          child: Text(
                            (widget.services[i].price +
                                        (widget.services[i].price *
                                                widget.services[i].commission) /
                                            100)
                                    .toInt()
                                    .toString() +
                                " " +
                                S.of(context).UAH,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ))))),
          Expanded(
              flex: 1,
              child: Material(
                  color: Colors.white.withOpacity(0.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRouter.Service,
                            arguments: {"service": widget.services[i]});
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: scale(context, 5)),
                          child: SvgPicture.asset(
                            'assets/img/question.svg',
                          )))))
        ]),
      );
      servicesWidgets.add(Divider());
    }
    /////// Selected services
    int idx = 0;
    int selectedPrice = 0;
    for (var i = 0; i < widget.services.length; i++) {
      if (_selectedServices[i]) {
        idx++;
        selectedPrice += (widget.services[i].price +
                (widget.services[i].price * widget.services[i].commission) /
                    100)
            .toInt();
        selectedServicesWidgets.add(
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Expanded(
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.only(left: scale(context, 0)),
                  child: Text(
                      (idx).toString() + ". " + widget.services[i].title,
                      style: TextStyle(fontSize: 9, color: Color(0xFF351916))),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                    padding: EdgeInsets.only(left: scale(context, 5)),
                    child: Text(
                      (widget.services[i].price +
                                  (widget.services[i].price *
                                          widget.services[i].commission) /
                                      100)
                              .toInt()
                              .toString() +
                          " " +
                          S.of(context).UAH,
                      style: TextStyle(
                          fontSize: 9, color: Color(0xFF351916), height: 2),
                    )))
          ]),
        );
      }
    }
    if (idx > 0) {
      selectedServicesWidgets.add(
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              flex: 7,
              child: Padding(
                  padding: EdgeInsets.only(top: verticalScale(context, 5)),
                  child: Text(
                    S.of(context).All + ":",
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF351916)),
                  ))),
          Expanded(
              flex: 2,
              child: Padding(
                  padding: EdgeInsets.only(
                      left: scale(context, 5), top: verticalScale(context, 5)),
                  child: Text(
                    selectedPrice.toString() + " " + S.of(context).UAH,
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF351916)),
                  )))
        ]),
      );
    }

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
                      top: verticalScale(context, 0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: state is ContentErrorState
                      ? Errors(errors: state.message)
                      : Container()),
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 12.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: Column(children: selectedServicesWidgets)),
              //Expanded panel
              ExpandableNotifier(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 10),
                      bottom: verticalScale(context, 10)),
                  child: ScrollOnExpand(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expandable(
                          collapsed: Container(),
                          expanded:
                              /////////////  Services  //////////////
                              Container(
                                  padding: EdgeInsets.only(
                                      bottom: verticalScale(context, 10.0)),
                                  height: verticalScale(context, 150),
                                  color: Color(0xFF351A16).withOpacity(0.05),
                                  child: Scrollbar(
                                      child: ListView(
                                          padding: EdgeInsets.only(
                                              top: verticalScale(context, 5.0),
                                              left: scale(context, 15.0),
                                              right: scale(context, 15.0),
                                              bottom:
                                                  verticalScale(context, 5.0)),
                                          children: servicesWidgets))),
                        ),
                        Builder(builder: (context) {
                          var controller = ExpandableController.of(context);
                          return Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: scale(context, 40),
                                  vertical: scale(context, 5)),
                              color: !controller.expanded
                                  ? Color(0xFF351A16).withOpacity(0.05)
                                  : Color(0xFFFF8908).withOpacity(0.05),
                              child: InkWell(
                                  onTap: () {
                                    controller.toggle();
                                  },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        !controller.expanded
                                            ? Text(S.of(context).AddEdit,
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    color: Color(0xFFFF8908)))
                                            : Text(S.of(context).Complete,
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    color: Color(0xFF371B17))),
                                        ExpandableIcon(
                                          theme: ExpandableThemeData(
                                            expandIcon:
                                                Custom.arrow_alt_circle_down,
                                            collapseIcon:
                                                Custom.arrow_alt_circle_up,
                                            iconColor: !controller.expanded
                                                ? Color(0xFFFF8908)
                                                : Color(0xFF371B17),
                                            iconSize: 28.0,
                                            iconRotationAngle: -pi / 2,
                                            iconPadding:
                                                EdgeInsets.only(right: 5),
                                            hasIcon: false,
                                          ),
                                        ),
                                      ])));
                        }),
                      ],
                    ),
                  ),
                ),
              ),

              /////////////  Date //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Date,
                      form: TextFormField(
                        enableInteractiveSelection: false,
                        style: TextStyle(fontSize: 14),
                        controller: _dateController,
                        onSaved: (newValue) => _orderData.date = newValue,
                        decoration: InputDecoration(
                          hintText: S.of(context).Date,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .apply(color: Color(0xFFBBBBBB)),
                          suffixIcon: InkWell(
                              onTap: () async {
                                DateTimePickerLocale locale;
                                String _language =
                                    await BlocProvider.of<ContentBloc>(context)
                                        .appBloc
                                        .storageRepository
                                        .getLanguage();
                                switch (_language) {
                                  case "en":
                                    locale = DateTimePickerLocale.en_us;
                                    break;
                                  case "ru":
                                    locale = DateTimePickerLocale.ru;
                                    break;
                                  default:
                                    locale = DateTimePickerLocale.uk;
                                }
                                DatePicker.showDatePicker(context,
                                    minDateTime: DateTime.now(),
                                    dateFormat: 'dd/MM/yyyy', onCancel: () {
                                  FocusScope.of(context)
                                      .requestFocus(new FocusNode());
                                }, onConfirm: (dateTime, selectedIndex) {
                                  FocusScope.of(context)
                                      .requestFocus(new FocusNode());
                                }, onChange: (dateTime, selectedIndex) {
                                  final DateFormat formatter =
                                      DateFormat('dd/MM/yyyy');
                                  _orderData.date = formatter.format(dateTime);
                                  _dateController.text = _orderData.date;
                                }, locale: locale);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(Icons.date_range))),
                          suffixIconConstraints: BoxConstraints(
                              maxHeight: verticalScale(context, 14)),
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                              left: scale(context, 9),
                              right: scale(context, 9),
                              top: verticalScale(context, 7),
                              bottom: verticalScale(context, 7)),
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
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).EmailForMedia,
                      require: true,
                      form: TextFormField(
                        style: Theme.of(context).textTheme.bodyText2,
                        onTap: () {
                          setState(() {
                            touched["email"] = true;
                          });
                          _checkSubmit();
                        },
                        initialValue: _orderData.email,
                        onSaved: (String inValue) {
                          this._orderData.email = inValue;
                        },
                        onChanged: (value) {
                          _checkSubmit();
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
                          S.of(context).Ordered +
                              " " +
                              (idx > 0
                                  ? (S.of(context).For +
                                      " " +
                                      selectedPrice.toString() +
                                      " " +
                                      S.of(context).UAH)
                                  : ""),
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
                                _orderData.services = [];
                                for (var i = 0;
                                    i < _selectedServices.length;
                                    i++) {
                                  if (_selectedServices[i] == true) {
                                    _orderData.services.add(widget.services[i]);
                                  }
                                }
                                Navigator.pushNamed(context, AppRouter.Payment,
                                    arguments: {
                                      "burial": this.widget.burial,
                                      "order": _orderData.toMap()
                                    });
                                //   WayForPayResponse res = await payWithWayForPay(
                                //       context, _orderData.toMap());
                                //   if (res != null && res.reasonCode == 1100) {
                                //     final List<int> _servicesIds = [];
                                //     if (_orderData.services != null) {
                                //       for (final service in _orderData.services) {
                                //         _servicesIds.add(service.id);
                                //       }
                                //     }
                                //     BlocProvider.of<ContentBloc>(context).add(
                                //         CreateOrderEvent(
                                //             burial: widget.burial,
                                //             date: _orderData.date,
                                //             name: _orderData.name,
                                //             surname: _orderData.surname,
                                //             services: _servicesIds,
                                //             items: [],
                                //             phone: _orderData.phone
                                //                         .replaceAll(' ', '')
                                //                         .length >
                                //                     13
                                //                 ? _orderData.phone
                                //                     .replaceAll(' ', '')
                                //                     .substring(0, 13)
                                //                 : _orderData.phone
                                //                     .replaceAll(' ', ''),
                                //             email: _orderData.email,
                                //             comment: _orderData.comment,
                                //             amount: res.amount,
                                //             orderId: res.orderReference,
                                //             paymentId: res.paymentSystem));
                                //   }
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
