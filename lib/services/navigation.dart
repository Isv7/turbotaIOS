import 'package:app/Screen/BurialScreen.dart';
import 'package:app/Screen/BurialsScreen.dart';
import 'package:app/Screen/CleaningScreen.dart';
import 'package:app/Screen/HistoryOrdersScreen.dart';
import 'package:app/Screen/ItemOrderScreen.dart';
import 'package:app/Screen/ItemsScreen.dart';
import 'package:app/Screen/ItemScreen.dart';
import 'package:app/Screen/LocationScreen.dart';
import 'package:app/Screen/OrderSuccessScreen.dart';
import 'package:app/Screen/PaymentScreen.dart';
import 'package:app/Screen/ServicesScreen.dart';
import 'package:app/Screen/ServiceScreen.dart';
import 'package:app/Screen/SplashScreen.dart';
import 'package:app/Screen/FirstScreen.dart';
import 'package:app/Screen/SingUpScreen.dart';
import 'package:app/Screen/ForgotScreen.dart';
import 'package:app/Screen/PolicyScreen.dart';
import 'package:app/Screen/SearchScreen.dart';
import 'package:app/Screen/MediaOrderScreen.dart';
import 'package:app/Screen/LanguagesScreen.dart';
import 'package:app/Screen/TermsOfUseScreen.dart';

import 'package:flutter/material.dart';

class AppRouter {
  static const String Splash = '/';
  static const String First = '/first';
  static const String SingUp = '/singup';
  static const String Forgot = '/forgot';
  static const String Policy = '/policy';
  static const String TermsOfUse = '/terms';
  static const String Search = '/search';
  static const String Burials = '/burials';
  static const String Burial = '/burial';
  static const String Location = '/location';
  static const String Cleaning = '/cleaning';
  static const String MediaOrder = '/mediaOrder';
  static const String Services = '/services';
  static const String Service = '/service';
  static const String Payment = '/payment';
  static const String OrderSuccess = '/orderSuccess';
  static const String HistoryOrders = '/historyOrders';
  static const String Items = '/items';
  static const String Item = '/item';
  static const String ItemOrder = '/itemOrder';
  static const String Languages = '/languages';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map<String, dynamic> arguments = new Map<String, dynamic>();
    if (settings != null && settings.arguments != null) {
      arguments = settings.arguments as Map<String, dynamic>;
    }
    switch (settings.name) {
      case Splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case First:
        return MaterialPageRoute(builder: (_) => FirstScreen());
      case SingUp:
        return MaterialPageRoute(builder: (_) => SingUpScreen());
      case Forgot:
        return MaterialPageRoute(builder: (_) => ForgotScreen());
      case Policy:
        return MaterialPageRoute(builder: (_) => PolicyScreen());
      case TermsOfUse:
        return MaterialPageRoute(builder: (_) => TermsOfUseScreen());
      case Search:
        return MaterialPageRoute(builder: (_) => SearchScreen());
      case Burials:
        return MaterialPageRoute(
            builder: (_) => BurialsScreen(arguments["burials"] ?? []));
      case Burial:
        return MaterialPageRoute(
            builder: (_) => BurialScreen(arguments["burial"]));
      case Location:
        return MaterialPageRoute(
            builder: (_) => LocationScreen(arguments["burial"]));
      case Cleaning:
        return MaterialPageRoute(
            builder: (_) =>
                CleaningScreen(arguments["burial"], arguments["services"]));
      case MediaOrder:
        return MaterialPageRoute(
            builder: (_) =>
                MediaOrderScreen(arguments["burial"], arguments["services"]));
      case Services:
        return MaterialPageRoute(
            builder: (_) => ServicesScreen(arguments["burial"],
                arguments["services"], arguments["prevOrder"]));
      case Service:
        return MaterialPageRoute(
            builder: (_) => ServiceScreen(arguments["service"]));
      case Payment:
        return MaterialPageRoute(
            builder: (_) =>
                PaymentScreen(arguments["burial"], arguments["order"]));
      case OrderSuccess:
        return MaterialPageRoute(
            builder: (_) =>
                OrderSuccessScreen(arguments["burial"], arguments["order"]));
      case HistoryOrders:
        return MaterialPageRoute(
            builder: (_) =>
                HistoryOrdersScreen(arguments["orders"], arguments["total"]));
      case Items:
        return MaterialPageRoute(
            builder: (_) =>
                ItemsScreen(arguments["items"], arguments["total"]));
      case Item:
        return MaterialPageRoute(builder: (_) => ItemScreen(arguments["item"]));
      case ItemOrder:
        return MaterialPageRoute(
            builder: (_) => ItemOrderScreen(arguments["item"]));
      case Languages:
        return MaterialPageRoute(builder: (_) => LanguagesScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

class NavigationServiceSingleton {
  static final NavigationServiceSingleton _singleton =
      new NavigationServiceSingleton._internal();

  final GlobalKey<NavigatorState> navigatorKey;

  factory NavigationServiceSingleton() => _singleton;

  NavigationServiceSingleton._internal()
      : navigatorKey = new GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> replaceWith(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> resetTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState.pushNamedAndRemoveUntil(
        routeName, (Route<dynamic> route) => false,
        arguments: arguments);
  }

  void goBack() {
    navigatorKey.currentState.pop();
  }
}
