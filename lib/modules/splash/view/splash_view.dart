import 'package:exchange/core/theme/app_colors.dart';
import 'package:exchange/core/theme/app_images.dart';
import 'package:exchange/modules/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashController controller = SplashController();

  @override
  void initState() {
    super.initState();
    controller.initSplash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.logoDefault,
              height: 300,
              width: 300,
            ),
            const Text(
              "Exchange",
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.defaultWhite,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
