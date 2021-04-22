import 'package:flutter/material.dart';

//0982327449
//i8AGKfzL1

double scale(context, value) {
  final width = MediaQuery.of(context).size.width;
  final guidelineBaseWidth = 375;
  return (width / guidelineBaseWidth * value);
}

double verticalScale(context, value) {
  final guidelineBaseHeight = 647;
  final height = MediaQuery.of(context).size.height;
  return (height / guidelineBaseHeight * value);
}

double percentWidth(context, value) {
  final width = MediaQuery.of(context).size.width;
  return (width / 100 * value);
}

double percentHeight(context, value) {
  final height = MediaQuery.of(context).size.height;
  return (height / 100 * value);
}

class Config {
  static const String ClientID = "tp_b2c_front";
  static const String ClientSecret = "SecretClient";
  static const String Upload = "https://turbota.webit.top/uploads/";
  static const String ItemUpload = "https://turbota.webit.top/uploads/users/";
  static const String ServerLiqpayCallback =
      "https://turbota.webit.top/callbacks/liqpay/";

  Color mainColor(double opacity) {
    return Color(0xFFD76701).withOpacity(opacity);
  }

  Color secondColor(double opacity) {
    return Color(0xFFF8F8F8).withOpacity(opacity);
  }

  Color captionColor(double opacity) {
    return Color(0xFF3A3A3A).withOpacity(opacity);
  }

  Color textColor(double opacity) {
    return Color(0xFFF4A4A4A).withOpacity(opacity);
  }

  Color mainDarkColor(double opacity) {
    return Color(0xFFD0D0D1).withOpacity(opacity);
  }

  Color inputBorderColor(double opacity) {
    return Color(0xFF4F4F4F).withOpacity(opacity);
  }
}
