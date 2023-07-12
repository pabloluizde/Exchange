// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:exchange/core/theme/app_colors.dart';
import 'package:exchange/modules/home/controller/controller_home_get.dart';
import 'package:exchange/modules/home/widgets/bottom_sheet.dart';
import 'package:exchange/modules/home/widgets/card_value.dart';
import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  final ControllerGetx controller;
  final Size size;
  const ButtonCard({
    Key? key,
    required this.controller,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller.currency.value == "Default"
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
      child: Container(
        height: size.height * 0.5,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.defaultGold,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: controller.currency.value != "Default"
            ? CardInputCurrency(
                controller: controller,
                size: size,
              )
            : Center(
                child: SizedBox(
                width: size.width * 0.7,
                child: const Text(
                  textAlign: TextAlign.center,
                  "Favor escolher a moeda que deseja cotar",
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColors.defaultWhite,
                      fontWeight: FontWeight.bold),
                ),
              )),
      ),
    );
  }
}
