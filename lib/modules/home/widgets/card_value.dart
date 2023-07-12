import 'package:exchange/core/theme/app_colors.dart';
import 'package:exchange/modules/home/controller/controller_home_get.dart';
import 'package:exchange/modules/home/widgets/textfield_home.dart';
import 'package:flutter/material.dart';

class CardInputCurrency extends StatelessWidget {
  final ControllerGetx controller;
  final Size size;
  const CardInputCurrency({
    super.key,
    required this.controller,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.45,
                child: Text(
                  "Valor do ${controller.currency.value} comparado ao Real",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 18,
                      color: AppColors.defaultWhite,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "BRL - ${controller.dolar.value.toStringAsFixed(2)}",
                style: const TextStyle(
                    fontSize: 18,
                    color: AppColors.defaultWhite,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            controller.currency.value == "Dolar"
                ? Expanded(
                    flex: 2,
                    child: TextFieldCurrency(
                        prefix: "US\$",
                        controller: controller.dolarController,
                        function: controller.dolarChanged),
                  )
                : Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: size.width * 0.01,
                      child: TextFieldCurrency(
                          prefix: "€",
                          controller: controller.euroController,
                          function: controller.euroChanged),
                    ),
                  ),
            const Icon(
              Icons.arrow_forward_sharp,
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                width: size.width * 0.05,
                child: TextFieldCurrency(
                    prefix: "R\$",
                    controller: controller.realController,
                    function: controller.realChanged),
              ),
            ),
          ],
        ),
        GestureDetector(
          child: Container(
              height: size.height * 0.06,
              width: size.height * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.defaultBlack.withOpacity(0.66)),
              child: const Center(
                  child: Text(
                "Converter",
                style: TextStyle(
                    fontSize: 20,
                    color: AppColors.defaultWhite,
                    fontWeight: FontWeight.bold),
              ))),
        ),
        const Text(
          "Obrigado por usar o Exchange",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18,
              color: AppColors.defaultWhite,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
