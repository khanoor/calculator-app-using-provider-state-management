import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant/app_colors.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() => Provider.of<CalculatorProvider>(context, listen: false).setValue('='),
      child: Container(
        height: 145,
        width: 65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.secondaryColor),
        child: const Center(
          child: Text(
            '=',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}