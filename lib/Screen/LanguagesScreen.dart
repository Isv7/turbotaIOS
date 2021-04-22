import 'package:app/config/config.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/blocs/content/Bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguagesScreen extends StatefulWidget {
  @override
  LanguagesScreenState createState() => new LanguagesScreenState();
}

class LanguagesScreenState extends State<LanguagesScreen> {
  Locale _locale;

  @override
  void didChangeDependencies() {
    Locale myLocale = Localizations.localeOf(context);
    this.setState(() {
      _locale = myLocale;
    });
    super.didChangeDependencies();
  }

  setSelectedLanguage(Locale val) {
    BlocProvider.of<ContentBloc>(context).add(ChangeLanguageEvent(locale: val));
    setState(() {
      _locale = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(S.of(context).Language),
              centerTitle: true,
            ),
            body: Stack(fit: StackFit.expand, children: <Widget>[
              Container(
                height: double.infinity,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              SingleChildScrollView(
                  padding: EdgeInsets.only(top: verticalScale(context, 20)),
                  child: Column(children: <Widget>[
                    RadioListTile(
                      value: Locale("uk"),
                      groupValue: _locale,
                      title: Text(
                        S.of(context).Ukrainian,
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF515050)),
                      ),
                      onChanged: (val) {
                        setSelectedLanguage(val);
                      },
                      activeColor: Color(0xFFFF8908),
                      selected: false,
                    ),
                    RadioListTile(
                      value: Locale("ru"),
                      groupValue: _locale,
                      title: Text(S.of(context).Russian,
                          style: TextStyle(
                              fontSize: 16, color: Color(0xFF515050))),
                      onChanged: (val) {
                        setSelectedLanguage(val);
                      },
                      activeColor: Color(0xFFFF8908),
                      selected: false,
                    ),
                    RadioListTile(
                      value: Locale("en"),
                      groupValue: _locale,
                      title: Text(S.of(context).English,
                          style: TextStyle(
                              fontSize: 16, color: Color(0xFF515050))),
                      onChanged: (val) {
                        setSelectedLanguage(val);
                      },
                      activeColor: Color(0xFFFF8908),
                      selected: false,
                    ),
                  ]))
            ])));
  }
}
