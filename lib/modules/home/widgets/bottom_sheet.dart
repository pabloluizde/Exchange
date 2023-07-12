import 'package:exchange/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BottomSheetCustom {
  static void showBottom(
      BuildContext context, Size size, Function()? onTap1, Function()? onTap2) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: AppColors.defaultGreyModal,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(25),
          topStart: Radius.circular(25),
        ),
      ),
      builder: (context) => SingleChildScrollView(
        padding: const EdgeInsetsDirectional.only(
          start: 20,
          end: 20,
          bottom: 30,
          top: 8,
        ),
        child: SizedBox(
          height: size.height * 0.28,
          child: Wrap(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                      height: size.height * 0.01,
                      width: size.width * 0.09,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 15.0,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 40),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Qual moeda deseja cotar?",
                        style: TextStyle(
                            fontSize: 23,
                            color: AppColors.defaultWhite,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: onTap1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          color: Colors.transparent,
                        ),
                        height: size.height * 0.05,
                        child: const Center(
                          child: Text(
                            'Dolar',
                            style: TextStyle(
                                fontSize: 18,
                                color: AppColors.defaultWhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: onTap2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        height: size.height * 0.05,
                        child: const Center(
                          child: Text(
                            'Euro',
                            style: TextStyle(
                                fontSize: 18,
                                color: AppColors.defaultWhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
