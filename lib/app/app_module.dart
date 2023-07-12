import 'package:exchange/modules/home/home_module.dart';
import 'package:exchange/modules/splash/view/splash_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const SplashPage(),
        ),
        ModuleRoute(
          HomeModule.moduleRoute,
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
