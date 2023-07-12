import 'package:exchange/app/app.dart';
import 'package:exchange/app/app_module.dart';
import 'package:exchange/modules/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() async {
  runApp(ModularApp(
    module: AppModule(),
    child: const MyApp(),
  ));
}
