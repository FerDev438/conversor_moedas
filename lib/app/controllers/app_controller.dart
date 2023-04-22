// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/currency_model.dart';

class HomeController {
  late List<CurrencyModel> currencies;
  TextEditingController fromText = TextEditingController();
  TextEditingController toText = TextEditingController();
  CurrencyModel? fromCurrency;
  CurrencyModel? toCurrency;
  HomeController(this.fromCurrency, this.toCurrency,
      {required TextEditingController fromText,
      required TextEditingController toText}) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    TextEditingController text = fromText;
    double value = double.tryParse(text as String) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency?.name == 'Real') {
      returnValue = value * fromCurrency!.real;
    } else if (fromCurrency?.name == 'Dolar') {
      returnValue = value * fromCurrency!.dolar;
    } else if (fromCurrency?.name == 'Euro') {
      returnValue = value * fromCurrency!.euro;
    } else if (fromCurrency?.name == 'BitCoin') {
      returnValue = value * fromCurrency!.bitcoin;
    }
    toText.text = returnValue.toStringAsFixed(2);
  }
}
