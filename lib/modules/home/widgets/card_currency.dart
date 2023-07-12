import 'package:exchange/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CardCurrency extends StatelessWidget {
  final String text;
  final Size size;
  const CardCurrency({
    required this.size,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.065,
      width: size.width * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: AppColors.defaultLightGrey,
      ),
      child: Center(
          child: Text(
        text.toUpperCase(),
        style: const TextStyle(
            fontSize: 20,
            color: AppColors.defaultWhite,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
