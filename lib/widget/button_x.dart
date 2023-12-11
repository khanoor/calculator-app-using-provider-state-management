import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonX extends StatelessWidget {
   const ButtonX({
    super.key, required this.buttonValue,  this.bColor = Colors.white,
  });

  final String buttonValue;
  final Color bColor;

  @override
  Widget build(BuildContext context) {
    
    return  InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setValue(buttonValue);
      },
      child: CircleAvatar(
        radius: 34,
        child: Text(
          buttonValue,
          style: const TextStyle(
              fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}