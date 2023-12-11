import 'package:calculator/constant/app_colors.dart';
import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    super.key, required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: controller,
      readOnly: true,
      autofocus: true,
      showCursor: true,
      decoration: const InputDecoration(
        
          border: InputBorder.none,
          focusColor: AppColors.primaryColor,
          fillColor: AppColors.primaryColor,
          filled: true),
      style: const TextStyle(fontSize: 50),
    );
  }
}
