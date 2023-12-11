import 'package:calculator/constant/app_colors.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/screen/widget_button_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/text_field.dart';
import 'calculate_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 20, vertical: 25);
    const decoration = BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        color: AppColors.primaryColor);
    return Consumer<CalculatorProvider>(
      builder: (context, provider, _) {
return Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: Column(
          children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: CustomeTextField(controller: provider.compController,),
             ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: padding,
                height: screenHight * .6,
                width: double.infinity,
                decoration: decoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) => buttonList[index])),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 4])),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 8])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      3, (index) => buttonList[index + 12])),
                                      const SizedBox(height: 20),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      3, (index) => buttonList[index + 15])),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        const CalculateButton()
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );}
    );
  }
}


