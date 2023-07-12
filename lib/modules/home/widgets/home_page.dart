import 'package:exchange/core/theme/app_colors.dart';
import 'package:exchange/core/theme/app_images.dart';
import 'package:exchange/modules/home/controller/controller_home_get.dart';
import 'package:exchange/modules/home/widgets/bottom_sheet.dart';
import 'package:exchange/modules/home/widgets/button_card.dart';
import 'package:exchange/modules/home/widgets/card_currency.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final ControllerGetx controller;
  final Size size;
  const HomePage({required this.controller, required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 70.0),
          child: Image.asset(
            AppImages.logoDefault,
            height: size.height * 0.12,
            width: size.width * 0.66,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GetBuilder<ControllerGetx>(
                init: controller,
                builder: (_c) {
                  return GestureDetector(
                    onTap: controller.currency.value != "Default"
                        ? () {
                            BottomSheetCustom.showBottom(context, size, () {
                              controller.textChange("Dolar");
                              Navigator.of(context).pop();
                            }, () {
                              controller.textChange("Euro");
                              Navigator.of(context).pop();
                            });
                          }
                        : () {},
                    child: CardCurrency(
                      size: size,
                      text: controller.textCurrency.value,
                    ),
                  );
                }),
            const Icon(
              Icons.arrow_forward_outlined,
              size: 50,
              color: AppColors.defaultWhite,
            ),
            CardCurrency(
              size: size,
              text: "BRL",
            ),
          ],
        ),
        GetBuilder<ControllerGetx>(
            init: controller,
            builder: (_c) {
              return ButtonCard(
                controller: controller,
                size: size,
              );
            }),
      ],
    );
  }
}
