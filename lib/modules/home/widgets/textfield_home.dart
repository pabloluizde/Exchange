import 'package:exchange/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldCurrency extends StatefulWidget {
  final Function(String) function;
  final String prefix;
  final TextEditingController controller;
  const TextFieldCurrency({
    required this.function,
    required this.prefix,
    required this.controller,
    super.key,
  });

  @override
  State<TextFieldCurrency> createState() => _TextFieldCurrencyState();
}

class _TextFieldCurrencyState extends State<TextFieldCurrency> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        controller: widget.controller,
        decoration: InputDecoration(
            filled: true,
            focusColor: AppColors.defaultLightGrey,
            fillColor: AppColors.defaultLightGrey,
            labelStyle: const TextStyle(color: Colors.amber),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                (Radius.circular(10.0)),
              ),
            ),
            prefixText: "${widget.prefix}  ",
            prefixStyle: TextStyle(color: AppColors.defaultGrey, fontSize: 15)),
        style: const TextStyle(
          color: AppColors.defaultGrey,
          fontSize: 18.0,
        ),
        onChanged: widget.function,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
