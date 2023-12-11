import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/screen/home_screen.dart';
import 'package:calculator/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen()
      ),
    );
  }
}



