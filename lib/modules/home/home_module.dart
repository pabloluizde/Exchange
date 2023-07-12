import 'package:exchange/core/services/client.dart';
import 'package:exchange/modules/home/view/home_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  static const moduleRoute = '/home/';

  @override
  List<Bind<Object>> get binds => [
        Bind.singleton(
          (i) => ClientGet(),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Home.route,
          child: (_, __) => Home(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
