import 'package:exchange/core/theme/app_colors.dart';
import 'package:exchange/core/widgets/screen_error.dart';
import 'package:exchange/modules/home/controller/controller_home_get.dart';
import 'package:exchange/modules/home/widgets/home_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const route = '/';

  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final controller = ControllerGetx();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.defaultGrey,
      body: FutureBuilder(
          future: controller.getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return const Center(
                    child: Text("Carregando dados...",
                        style: TextStyle(color: Colors.amber, fontSize: 25.0),
                        textAlign: TextAlign.center));
              default:
                if (snapshot.hasError) {
                  return const ErrorScreen();
                } else {
                  return HomePage(
                    controller: controller,
                    size: size,
                  );
                }
            }
          }),
    );
  }
}
