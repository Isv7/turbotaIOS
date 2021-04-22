import 'package:app/services/navigation.dart';
import 'blocs/SimpleBlocObserver.dart';
import 'config/config.dart';
import 'generated/l10n.dart';
import 'package:app/blocs/authentication/Bloc.dart';
import 'package:app/blocs/authentication/AuthenticationBloc.dart';
import 'package:app/blocs/content/Bloc.dart';
import 'package:app/blocs/app/AppBloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await Firebase.initializeApp();
  final appBloc = AppBloc();

  runApp(MultiBlocProvider(providers: [
    BlocProvider<AuthenticationBloc>(create: (context) {
      return appBloc.authentication;
    }),
    BlocProvider<ContentBloc>(create: (context) {
      return appBloc.router;
    }),
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = Locale("uk");

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<ContentBloc>(context)
        .appBloc
        .storageRepository
        .getLanguage()
        .then((_language) {
      if (_language != null) {
        _locale = Locale(_language);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContentBloc, ContentState>(builder: (context, state) {
      if (state is ChangeLanguageState) {
        _locale = state.locale;
      }
      return MaterialApp(
          title: 'Turbota',
          navigatorKey: NavigationServiceSingleton().navigatorKey,
          onGenerateRoute: AppRouter.generateRoute,
          debugShowCheckedModeBanner: false,
          locale: _locale,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            FallbackLocalizationDelegate(),
          ],
          supportedLocales: S.delegate.supportedLocales,
          initialRoute: AppRouter.Splash,
          theme: ThemeData(
            fontFamily: 'Comfortaa',
            primaryColor: Config().mainColor(1),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                elevation: 0, foregroundColor: Colors.white),
            brightness: Brightness.light,
            accentColor: Config().mainColor(1),
            scaffoldBackgroundColor: Config().secondColor(1),
            textTheme: TextTheme(
              headline1: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  height: 1.9,
                  color: Colors.black),
              headline2: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  height: 1.4,
                  color: Config().secondColor(1)),
              headline3: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.w600,
                  color: Config().mainColor(1)),
              headline4: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
              headline5: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.9,
                  color: Colors.black.withOpacity(0.5)),
              headline6: TextStyle(fontSize: 11.0, color: Colors.red),
              subtitle1: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                height: 1.3,
              ),
              bodyText1: TextStyle(
                fontSize: 11.0,
                color: Config().textColor(1),
                fontWeight: FontWeight.w400,
                height: 1.3,
              ),
              bodyText2: TextStyle(
                fontSize: 11.0,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                height: 1.3,
              ),
              button: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0.9),
              caption: TextStyle(
                fontSize: 16.0,
                color: Config().captionColor(1),
                height: 1.9,
              ),
              overline: TextStyle(
                fontSize: 10.0,
                color: Config().secondColor(1),
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
            ),
          ));
    });
  }
}

class FallbackLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  @override
  bool isSupported(Locale locale) => true;
  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      DefaultMaterialLocalizations();
  @override
  bool shouldReload(_) => false;
}
