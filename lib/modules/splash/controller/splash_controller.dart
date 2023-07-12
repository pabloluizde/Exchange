import 'package:exchange/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashController {
  Future<void> initSplash() {
    return Future.delayed(const Duration(seconds: 2))
        .then((value) => Modular.to.pushNamed(HomeModule.moduleRoute));
  }
}
