import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

import 'package:app/components/FormTemplate.dart';
import 'package:app/blocs/content/Bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

class SearchData {
  String region = "";
  String city;
  String cemetery;
  String year = "";
  String name = "";
  String surname = "";
  String patronymic = "";
}

class SearchForm extends StatefulWidget {
  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  bool _sumbitEnable = false;
  SearchData _searchData = new SearchData();
  dynamic _objects;
  List<String> _regions = <String>[];
  Map<String, int> _cemeteriesMap = Map();
  List<String> _cities = <String>[];
  List<String> _cemeteries = <String>[];
  TextEditingController _yearController = TextEditingController();

  Map<String, bool> touched = {
    "region": false,
    "city": false,
    "cemetery": false,
    "surname": false,
  };

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    BlocProvider.of<ContentBloc>(context).add(GetObjectsEvent());
  }

  checkSubmit() {
    if (touched["region"] &&
        touched["city"] &&
        touched["cemetery"] &&
        touched["surname"]) {
      this.setState(() {
        _sumbitEnable = true;
      });
    } else {
      this.setState(() {
        _sumbitEnable = false;
      });
    }
  }

  changeRegion(String region) {
    final citiesData = _objects[_regions.indexOf(region)].cities;
    List<String> cities = <String>[];
    for (var i = 0; i < citiesData.length; i++) {
      cities.add(citiesData[i].name);
    }
    this.setState(() {
      _cities = cities;
      _cemeteries = <String>[];
      _searchData.city = null;
      _searchData.cemetery = null;
    });
  }

  changeCity(String city) {
    final cemeteriesData = _objects[_regions.indexOf(_searchData.region)]
        .cities[_cities.indexOf(city)]
        .objects;
    List<String> cemeteries = <String>[];
    for (var i = 0; i < cemeteriesData.length; i++) {
      cemeteries.add(cemeteriesData[i].name);
      _cemeteriesMap[cemeteriesData[i].name] = cemeteriesData[i].id;
    }
    this.setState(() {
      _cemeteries = cemeteries;
      _searchData.cemetery = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContentBloc, ContentState>(builder: (context, state) {
      if (state is ContentObjectsState) {
        _objects = state.objects;
        _regions.clear();
        for (var i = 0; i < state.objects.length; i++) {
          _regions.add(state.objects[i].name);
        }
      }
      return Form(
          key: this._formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: Container()),

              /////////////  Oblast //////////////
              Padding(
                  padding: EdgeInsets.only(
                      left: scale(context, 48.0), right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Oblast,
                      require: true,
                      tooltip: S.of(context).Oblast_tooltip,
                      form: DropdownButtonFormField<String>(
                        value: null,
                        isExpanded: true,
                        isDense: true,
                        style: Theme.of(context).textTheme.bodyText2,
                        onSaved: (String inValue) {
                          this._searchData.region = inValue;
                        },
                        onChanged: (String value) {
                          setState(() {
                            this._searchData.region = value;
                            touched["region"] = true;
                          });
                          changeRegion(value);
                          checkSubmit();
                        },
                        autovalidate: touched["region"],
                        hint: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              S.of(context).Oblast,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .apply(color: Color(0xFFBBBBBB)),
                            )),
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                              left: scale(context, 9),
                              right: scale(context, 9),
                              top: verticalScale(context, 5),
                              bottom: verticalScale(context, 5)),
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
                        validator: (String inValue) {
                          if (inValue == null || inValue.length == 0) {
                            return S.of(context).FieldIsRequired;
                          }
                          return null;
                        },
                        items: _regions
                            .map<DropdownMenuItem<String>>((String region) {
                          return DropdownMenuItem<String>(
                            value: region,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  region,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ))),

              /////////////  City //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).City,
                      require: true,
                      tooltip: S.of(context).City_tooltip,
                      form: DropdownButtonFormField<String>(
                        value: _searchData.city,
                        isExpanded: true,
                        isDense: true,
                        style: Theme.of(context).textTheme.bodyText2,
                        onSaved: (String inValue) {
                          this._searchData.city = inValue;
                        },
                        onChanged: (String value) {
                          setState(() {
                            this._searchData.city = value;
                            touched["city"] = true;
                          });
                          changeCity(value);
                          checkSubmit();
                        },
                        autovalidate: touched["city"],
                        hint: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              S.of(context).City,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .apply(color: Color(0xFFBBBBBB)),
                            )),
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                              left: scale(context, 9),
                              right: scale(context, 9),
                              top: verticalScale(context, 5),
                              bottom: verticalScale(context, 5)),
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
                        validator: (String inValue) {
                          if (inValue == null || inValue.length == 0) {
                            return S.of(context).FieldIsRequired;
                          }
                          return null;
                        },
                        items: _cities
                            .map<DropdownMenuItem<String>>((String city) {
                          return DropdownMenuItem<String>(
                            value: city,
                            child: Text(
                              city,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                      ))),

              /////////////  Obekt //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Obekt,
                      require: true,
                      tooltip: S.of(context).Obekt_tooltip,
                      form: DropdownButtonFormField<String>(
                        value: this._searchData.cemetery,
                        isExpanded: true,
                        isDense: true,
                        style: Theme.of(context).textTheme.bodyText2,
                        onSaved: (String inValue) {
                          this._searchData.cemetery = inValue;
                        },
                        onChanged: (String value) {
                          setState(() {
                            this._searchData.cemetery = value;
                            touched["cemetery"] = true;
                            checkSubmit();
                          });
                        },
                        autovalidate: touched["cemetery"],
                        hint: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              S.of(context).Obekt,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .apply(color: Color(0xFFBBBBBB)),
                            )),
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                              left: scale(context, 9),
                              right: scale(context, 9),
                              top: verticalScale(context, 5),
                              bottom: verticalScale(context, 5)),
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
                        validator: (String inValue) {
                          if (inValue == null || inValue.length == 0) {
                            return S.of(context).FieldIsRequired;
                          }
                          return null;
                        },
                        items: _cemeteries
                            .map<DropdownMenuItem<String>>((String cemetery) {
                          return DropdownMenuItem<String>(
                            value: cemetery,
                            child: Text(
                              cemetery,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                      ))),

              ///////////// Surname //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Surname,
                      require: true,
                      tooltip: S.of(context).Surname_tooltip,
                      form: TextFormField(
                        onSaved: (String inValue) {
                          this._searchData.surname = inValue;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (String value) {
                          this._searchData.surname = value;
                          touched["surname"] = true;
                          checkSubmit();
                        },
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
                          if (inValue == null ||
                              inValue.length == 0 ||
                              _searchData.surname == "") {
                            return S.of(context).FieldIsRequired;
                          }
                          if (inValue == null ||
                              inValue.length < 2 ||
                              _searchData.surname == "") {
                            return S.of(context).FieldMinLength;
                          }
                          return null;
                        },
                      ))),

              ///////////// Name //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Name,
                      tooltip: S.of(context).Name_tooltip,
                      form: TextFormField(
                        onSaved: (String inValue) {
                          this._searchData.name = inValue;
                        },
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

              ///////////// Patronymic //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Patronymic,
                      tooltip: S.of(context).Patronymic_tooltip,
                      form: TextFormField(
                        onSaved: (String inValue) {
                          this._searchData.patronymic = inValue;
                        },
                        style: Theme.of(context).textTheme.bodyText2,
                        cursorColor: Config().mainColor(1),
                        decoration: InputDecoration(
                          hintText: S.of(context).Patronymic,
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

              /////////////  Vik //////////////
              Padding(
                  padding: EdgeInsets.only(
                      top: verticalScale(context, 17.0),
                      left: scale(context, 48.0),
                      right: scale(context, 48.0)),
                  child: FormTemplate(
                      label: S.of(context).Vik,
                      tooltip: S.of(context).Vik_tooltip,
                      form: TextFormField(
                        enableInteractiveSelection: false,
                        style: TextStyle(fontSize: 14),
                        controller: _yearController,
                        onSaved: (newValue) => _searchData.year = newValue,
                        decoration: InputDecoration(
                          hintText: S.of(context).Vik,
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
                                    maxDateTime: DateTime.now(),
                                    dateFormat: 'yyyy', onCancel: () {
                                  FocusScope.of(context)
                                      .requestFocus(new FocusNode());
                                }, onConfirm: (dateTime, selectedIndex) {
                                  FocusScope.of(context)
                                      .requestFocus(new FocusNode());
                                }, onChange: (dateTime, selectedIndex) {
                                  final DateFormat formatter =
                                      DateFormat('yyyy');
                                  _searchData.year = formatter.format(dateTime);
                                  _yearController.text = _searchData.year;
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

              /////////////  Poshuk Button///////////////////
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
                      child: Text(S.of(context).Poshuk,
                          style: Theme.of(context).textTheme.button),
                      color: _sumbitEnable &&
                              _formKey.currentState != null &&
                              _formKey.currentState.validate() &&
                              !(state is ContentLoadingState)
                          ? Color(0xFFD76701)
                          : Colors.grey,
                      elevation: 0,
                      onPressed: state is ContentLoadingState ||
                              !_sumbitEnable ||
                              !(_formKey.currentState != null &&
                                  _formKey.currentState.validate())
                          ? () {
                              FocusScope.of(context).unfocus();
                            }
                          : () {
                              FocusScope.of(context).unfocus();
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                BlocProvider.of<ContentBloc>(context)
                                    .add(ContentSearchEvent(
                                  name: _searchData.name,
                                  surname: _searchData.surname,
                                  patronymic: _searchData.patronymic,
                                  year: _searchData.year,
                                  cemeteryID:
                                      _cemeteriesMap[_searchData.cemetery],
                                ));
                              }
                            },
                      shape: new RoundedRectangleBorder(
                          borderRadius:
                              new BorderRadius.circular(scale(context, 5.0))),
                    )),
              ),
            ],
          ));
    });
  }
}
