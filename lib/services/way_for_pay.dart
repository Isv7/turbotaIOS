import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_wayforpay_package/flutter_wayforpay_package.dart';
import 'package:flutter_wayforpay_package/utils/types.dart';
import 'package:flutter_wayforpay_package/model/wayforpay_response.dart';

import 'package:app/generated/l10n.dart';

Future<WayForPayResponse> payWithWayForPay(
    BuildContext context, Map<String, dynamic> order) async {
  double amount = 0;
  List<int> productCounts = [];
  List<String> productNames = [];
  List<double> productPrices = [];
  if (order["services"] != null) {
    for (final service in order["services"]) {
      productNames.add(service.id.toString() + " " + service.title);
      final price = (service.price * 100).round() / 100;
      amount += price;
      productCounts.add(1);
      productPrices.add(price);
    }
  }
  if (order["items"] != null) {
    for (final item in order["items"]) {
      productNames.add(item.id.toString() + " " + item.title);
      final price = (item.price * 100).round() / 100;
      amount += price;
      productCounts.add(1);
      productPrices.add(price);
    }
  }

  final orderId = Uuid().v1();

  WayForPay wayForPay = WayForPay();
  //productPrices = [0.1, 0.1, 0.1];
  //amount = 0.3;

  // wayForPay.merchantAccount = "turbota_webit_top";
  // wayForPay.merchantSecretKey = "afefd741e84766b06dd9425094b597f40f4060b2";
  wayForPay.merchantAccount = "test_merch_n1";
  wayForPay.merchantSecretKey = "flk3409refn54t54t*FNJRET";
  wayForPay.productCount = productCounts;
  wayForPay.productName = productNames;
  wayForPay.productPrice = productPrices;

  WayForPayResponse value = await wayForPay.openCardEnterScreen(context,
      title: S.of(context).Payment,
      orderDate: DateTime.now(),
      merchantTransactionSecureType: MerchantTransactionSecureType.AUTO,
      orderReference: orderId,
      amount: ((amount * 100).round() / 100));

  if (value != null) {
    print("transactionStatus: " +
        value.transactionStatus +
        ", reasonCode: " +
        value.reasonCode.toString() +
        ", reason: " +
        value.reason);
  }
  return value;
}
