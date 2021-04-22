// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `accepted`
  String get Accepted {
    return Intl.message(
      'accepted',
      name: 'Accepted',
      desc: '',
      args: [],
    );
  }

  /// `The manager responsible for your order will contact you shortly`
  String get AcceptedText {
    return Intl.message(
      'The manager responsible for your order will contact you shortly',
      name: 'AcceptedText',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get All {
    return Intl.message(
      'Total',
      name: 'All',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get Amount {
    return Intl.message(
      'Amount',
      name: 'Amount',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get Available {
    return Intl.message(
      'Available',
      name: 'Available',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth`
  String get Birthdate {
    return Intl.message(
      'Date of birth',
      name: 'Birthdate',
      desc: '',
      args: [],
    );
  }

  /// `Burial Card`
  String get BurialCard {
    return Intl.message(
      'Burial Card',
      name: 'BurialCard',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get Buy {
    return Intl.message(
      'Buy',
      name: 'Buy',
      desc: '',
      args: [],
    );
  }

  /// `Buy goods for`
  String get BuyItem {
    return Intl.message(
      'Buy goods for',
      name: 'BuyItem',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message(
      'Cancel',
      name: 'Cancel',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get ChangePassword {
    return Intl.message(
      'Change Password',
      name: 'ChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get City {
    return Intl.message(
      'City',
      name: 'City',
      desc: '',
      args: [],
    );
  }

  /// `Enter the city you are currently in`
  String get City_tooltip {
    return Intl.message(
      'Enter the city you are currently in',
      name: 'City_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Cleaning`
  String get Cleaning {
    return Intl.message(
      'Cleaning',
      name: 'Cleaning',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get Close {
    return Intl.message(
      'Close',
      name: 'Close',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get Comment {
    return Intl.message(
      'Comment',
      name: 'Comment',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get ConfirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'ConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get Confirmation {
    return Intl.message(
      'Confirm',
      name: 'Confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Made in Isv7 Web Studio`
  String get Copyright_isv7 {
    return Intl.message(
      'Made in Isv7 Web Studio',
      name: 'Copyright_isv7',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get Date {
    return Intl.message(
      'Date',
      name: 'Date',
      desc: '',
      args: [],
    );
  }

  /// `Date of Death`
  String get DateOfDeath {
    return Intl.message(
      'Date of Death',
      name: 'DateOfDeath',
      desc: '',
      args: [],
    );
  }

  /// `Description and characteristics`
  String get Description {
    return Intl.message(
      'Description and characteristics',
      name: 'Description',
      desc: '',
      args: [],
    );
  }

  /// `Dirge`
  String get Dirge {
    return Intl.message(
      'Dirge',
      name: 'Dirge',
      desc: '',
      args: [],
    );
  }

  /// `Email to send media`
  String get EmailForMedia {
    return Intl.message(
      'Email to send media',
      name: 'EmailForMedia',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid`
  String get EmailNotValid {
    return Intl.message(
      'Email is invalid',
      name: 'EmailNotValid',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get English {
    return Intl.message(
      'English',
      name: 'English',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get Exit {
    return Intl.message(
      'Exit',
      name: 'Exit',
      desc: '',
      args: [],
    );
  }

  /// `Field is required`
  String get FieldIsRequired {
    return Intl.message(
      'Field is required',
      name: 'FieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Surname, name, patronimyc`
  String get Fio {
    return Intl.message(
      'Surname, name, patronimyc',
      name: 'Fio',
      desc: '',
      args: [],
    );
  }

  /// `Enter the surname, name, patronimyc of the person you are looking for`
  String get Fio_tooltip {
    return Intl.message(
      'Enter the surname, name, patronimyc of the person you are looking for',
      name: 'Fio_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Authorization Error`
  String get FirebaseAuthError {
    return Intl.message(
      'Authorization Error',
      name: 'FirebaseAuthError',
      desc: '',
      args: [],
    );
  }

  /// `for`
  String get For {
    return Intl.message(
      'for',
      name: 'For',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get ForgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Geolocation`
  String get Geolocation {
    return Intl.message(
      'Geolocation',
      name: 'Geolocation',
      desc: '',
      args: [],
    );
  }

  /// `Got the code?`
  String get GiveCode {
    return Intl.message(
      'Got the code?',
      name: 'GiveCode',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get History {
    return Intl.message(
      'History',
      name: 'History',
      desc: '',
      args: [],
    );
  }

  /// `Order History`
  String get HistoryOrders {
    return Intl.message(
      'Order History',
      name: 'HistoryOrders',
      desc: '',
      args: [],
    );
  }

  /// `Item Card`
  String get ItemCard {
    return Intl.message(
      'Item Card',
      name: 'ItemCard',
      desc: '',
      args: [],
    );
  }

  /// `Item Order`
  String get ItemOrder {
    return Intl.message(
      'Item Order',
      name: 'ItemOrder',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get Items {
    return Intl.message(
      'Items',
      name: 'Items',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get Location {
    return Intl.message(
      'Location',
      name: 'Location',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Login {
    return Intl.message(
      'Login',
      name: 'Login',
      desc: '',
      args: [],
    );
  }

  /// `Or sign in`
  String get Login_fb {
    return Intl.message(
      'Or sign in',
      name: 'Login_fb',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get Menu {
    return Intl.message(
      'Menu',
      name: 'Menu',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get MoreDetail {
    return Intl.message(
      'More',
      name: 'MoreDetail',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get Name {
    return Intl.message(
      'Name',
      name: 'Name',
      desc: '',
      args: [],
    );
  }

  /// `Enter the name of the person you are looking for`
  String get Name_tooltip {
    return Intl.message(
      'Enter the name of the person you are looking for',
      name: 'Name_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Not registered yet?`
  String get NewUser {
    return Intl.message(
      'Not registered yet?',
      name: 'NewUser',
      desc: '',
      args: [],
    );
  }

  /// `Not available`
  String get NotAvailable {
    return Intl.message(
      'Not available',
      name: 'NotAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Object`
  String get Obekt {
    return Intl.message(
      'Object',
      name: 'Obekt',
      desc: '',
      args: [],
    );
  }

  /// `Enter the object near which you are now`
  String get Obekt_tooltip {
    return Intl.message(
      'Enter the object near which you are now',
      name: 'Obekt_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Area`
  String get Oblast {
    return Intl.message(
      'Area',
      name: 'Oblast',
      desc: '',
      args: [],
    );
  }

  /// `Enter the area you are currently in`
  String get Oblast_tooltip {
    return Intl.message(
      'Enter the area you are currently in',
      name: 'Oblast_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get Ok {
    return Intl.message(
      'Ok',
      name: 'Ok',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get Order {
    return Intl.message(
      'Order',
      name: 'Order',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get Ordered {
    return Intl.message(
      'Order',
      name: 'Ordered',
      desc: '',
      args: [],
    );
  }

  /// `Order cleaning`
  String get OrderCleaning {
    return Intl.message(
      'Order cleaning',
      name: 'OrderCleaning',
      desc: '',
      args: [],
    );
  }

  /// `Order a dirge`
  String get OrderDirge {
    return Intl.message(
      'Order a dirge',
      name: 'OrderDirge',
      desc: '',
      args: [],
    );
  }

  /// `Order photo`
  String get OrderMedia {
    return Intl.message(
      'Order photo',
      name: 'OrderMedia',
      desc: '',
      args: [],
    );
  }

  /// `Order photo`
  String get OrderPhoto {
    return Intl.message(
      'Order photo',
      name: 'OrderPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Order services`
  String get OrderServices {
    return Intl.message(
      'Order services',
      name: 'OrderServices',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been accepted`
  String get OrderingSuccess {
    return Intl.message(
      'Your order has been accepted',
      name: 'OrderingSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get PasswordChanged {
    return Intl.message(
      'Change Password',
      name: 'PasswordChanged',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get PasswordMinLength {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'PasswordMinLength',
      desc: '',
      args: [],
    );
  }

  /// `Repeat password`
  String get Password_2 {
    return Intl.message(
      'Repeat password',
      name: 'Password_2',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get Password_tooltip {
    return Intl.message(
      'Enter your password',
      name: 'Password_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get PasswordsNotEqual {
    return Intl.message(
      'Passwords do not match',
      name: 'PasswordsNotEqual',
      desc: '',
      args: [],
    );
  }

  /// `Patronymic`
  String get Patronymic {
    return Intl.message(
      'Patronymic',
      name: 'Patronymic',
      desc: '',
      args: [],
    );
  }

  /// `Enter the patronymic of the person you are looking for`
  String get Patronymic_tooltip {
    return Intl.message(
      'Enter the patronymic of the person you are looking for',
      name: 'Patronymic_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get Payment {
    return Intl.message(
      'Payment',
      name: 'Payment',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get Phone {
    return Intl.message(
      'Phone',
      name: 'Phone',
      desc: '',
      args: [],
    );
  }

  /// `Invalid code`
  String get PhoneConfirmError {
    return Intl.message(
      'Invalid code',
      name: 'PhoneConfirmError',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone`
  String get Phone_tooltip {
    return Intl.message(
      'Enter your phone',
      name: 'Phone_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Place`
  String get Place {
    return Intl.message(
      'Place',
      name: 'Place',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get Policy {
    return Intl.message(
      'Privacy Policy',
      name: 'Policy',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get TermsOfUse {
    return Intl.message(
      'Terms of Use',
      name: 'TermsOfUse',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get Poshuk {
    return Intl.message(
      'Search',
      name: 'Poshuk',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get Price {
    return Intl.message(
      'Price',
      name: 'Price',
      desc: '',
      args: [],
    );
  }

  /// `We blocked all requests from this device due to unusual activity. Please try again later.`
  String get QuotaExceeded {
    return Intl.message(
      'We blocked all requests from this device due to unusual activity. Please try again later.',
      name: 'QuotaExceeded',
      desc: '',
      args: [],
    );
  }

  /// `Recover Password`
  String get RecoveryPassword {
    return Intl.message(
      'Recover Password',
      name: 'RecoveryPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter the phone number you provided during registration and we will send you the code in an SMS message`
  String get RecoveryPrompt {
    return Intl.message(
      'Enter the phone number you provided during registration and we will send you the code in an SMS message',
      name: 'RecoveryPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Retry order`
  String get RetryOrder {
    return Intl.message(
      'Retry order',
      name: 'RetryOrder',
      desc: '',
      args: [],
    );
  }

  /// `Row`
  String get Row {
    return Intl.message(
      'Row',
      name: 'Row',
      desc: '',
      args: [],
    );
  }

  /// `Русский`
  String get Russian {
    return Intl.message(
      'Русский',
      name: 'Russian',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get Save {
    return Intl.message(
      'Save',
      name: 'Save',
      desc: '',
      args: [],
    );
  }

  /// `Search results`
  String get SearchResults {
    return Intl.message(
      'Search results',
      name: 'SearchResults',
      desc: '',
      args: [],
    );
  }

  /// `Sector`
  String get Sector {
    return Intl.message(
      'Sector',
      name: 'Sector',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get Services {
    return Intl.message(
      'Services',
      name: 'Services',
      desc: '',
      args: [],
    );
  }

  /// `Choose services`
  String get ServicesPrompt {
    return Intl.message(
      'Choose services',
      name: 'ServicesPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Shop`
  String get Shop {
    return Intl.message(
      'Shop',
      name: 'Shop',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get Sign_up {
    return Intl.message(
      'Registration',
      name: 'Sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get Sign_upp {
    return Intl.message(
      'Register',
      name: 'Sign_upp',
      desc: '',
      args: [],
    );
  }

  /// `Register with`
  String get Sign_uppfb {
    return Intl.message(
      'Register with',
      name: 'Sign_uppfb',
      desc: '',
      args: [],
    );
  }

  /// `Subsector`
  String get Subsector {
    return Intl.message(
      'Subsector',
      name: 'Subsector',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get Surname {
    return Intl.message(
      'Surname',
      name: 'Surname',
      desc: '',
      args: [],
    );
  }

  /// `Enter the last name of the person you are looking for`
  String get Surname_tooltip {
    return Intl.message(
      'Enter the last name of the person you are looking for',
      name: 'Surname_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Thank you`
  String get Thanks {
    return Intl.message(
      'Thank you',
      name: 'Thanks',
      desc: '',
      args: [],
    );
  }

  /// `UAH`
  String get UAH {
    return Intl.message(
      'UAH',
      name: 'UAH',
      desc: '',
      args: [],
    );
  }

  /// `Українська`
  String get Ukrainian {
    return Intl.message(
      'Українська',
      name: 'Ukrainian',
      desc: '',
      args: [],
    );
  }

  /// `User is not active. Contact your administrator.`
  String get UserNotActive {
    return Intl.message(
      'User is not active. Contact your administrator.',
      name: 'UserNotActive',
      desc: '',
      args: [],
    );
  }

  /// `User does not exist`
  String get UserNotExist {
    return Intl.message(
      'User does not exist',
      name: 'UserNotExist',
      desc: '',
      args: [],
    );
  }

  /// `Year of burial`
  String get Vik {
    return Intl.message(
      'Year of burial',
      name: 'Vik',
      desc: '',
      args: [],
    );
  }

  /// `Enter the year of burial of the person you are looking for`
  String get Vik_tooltip {
    return Intl.message(
      'Enter the year of burial of the person you are looking for',
      name: 'Vik_tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Invalid login or password`
  String get WrongPassword {
    return Intl.message(
      'Invalid login or password',
      name: 'WrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `You entered the wrong phone`
  String get WrongPhoneNumber {
    return Intl.message(
      'You entered the wrong phone',
      name: 'WrongPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Your order`
  String get YourOrder {
    return Intl.message(
      'Your order',
      name: 'YourOrder',
      desc: '',
      args: [],
    );
  }

  /// `Facebook authorization error`
  String get facebook_auth_error {
    return Intl.message(
      'Facebook authorization error',
      name: 'facebook_auth_error',
      desc: '',
      args: [],
    );
  }

  /// `Додати / редагувати`
  String get AddEdit {
    return Intl.message(
      'Додати / редагувати',
      name: 'AddEdit',
      desc: '',
      args: [],
    );
  }

  /// `Завершити`
  String get Complete {
    return Intl.message(
      'Завершити',
      name: 'Complete',
      desc: '',
      args: [],
    );
  }

  /// `Назва`
  String get Title {
    return Intl.message(
      'Назва',
      name: 'Title',
      desc: '',
      args: [],
    );
  }

  /// `Explanation`
  String get Explanation {
    return Intl.message(
      'Explanation',
      name: 'Explanation',
      desc: '',
      args: [],
    );
  }

  /// `Field must be at least 2 characters`
  String get FieldMinLength {
    return Intl.message(
      'Field must be at least 2 characters',
      name: 'FieldMinLength',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}