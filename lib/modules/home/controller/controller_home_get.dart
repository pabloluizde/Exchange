import 'package:exchange/core/services/client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ControllerGetx extends GetxController {
  final realController = TextEditingController();
  final dolarController = TextEditingController();
  final euroController = TextEditingController();
  ClientGet clientGet = Modular.get();

  Rx<String> currency = "Default".obs;
  Rx<String> textCurrency = "Moeda".obs;
  Rx<double> dolar = 0.0.obs;
  Rx<double> euro = 0.0.obs;

  final request =
      "https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL,BTC-BRL";

  Future<Map> getData() async {
    final map = await clientGet.getData();
    _values(map);
    return map;
  }

  void textChange(String value) {
    currency.value = value;
    textCurrency.value = value;
    update();
  }

  void _values(Map map) {
    dolar.value = double.parse(map["USDBRL"]["bid"]);
    euro.value = double.parse(map["EURBRL"]["bid"]);
  }

  void realChanged(String text) {
    double real = double.parse(text);
    dolarController.text = (real / dolar.value).toStringAsFixed(2);
    euroController.text = (real / euro.value).toStringAsFixed(2);
  }

  void dolarChanged(String text) {
    double dolar = double.parse(text);
    realController.text = (dolar * this.dolar.value).toStringAsFixed(2);
    euroController.text =
        (dolar * this.dolar.value / euro.value).toStringAsFixed(2);
  }

  void euroChanged(String text) {
    double euro = double.parse(text);
    realController.text = (euro * this.euro.value).toStringAsFixed(2);
    dolarController.text =
        (euro * this.euro.value / dolar.value).toStringAsFixed(2);
  }
}
