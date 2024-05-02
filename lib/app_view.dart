import 'package:expense_tracker/screens/add_cautela/views/add_cautela.dart';
import 'package:expense_tracker/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense Tracker",
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              background: Colors.grey.shade100,
              onBackground: Colors.black,
              primary: const Color(0xFF00B2B7),
              secondary: const Color(0xFFE064F7),
              tertiary: const Color(0xFFFF8D6C),
              outline: Colors.grey)),
      // home: const HomeScreen(),
      home: const AddCautela(),
    );
  }
}

class Cores {
  static HSVColor negativo = const HSVColor.fromAHSV(1, 0, 0.75, 1);
  static HSVColor advertencia = const HSVColor.fromAHSV(1, 14.39, 0.8667, 1);
  static HSVColor azul = const HSVColor.fromAHSV(1, 242, 1, 0.77);
  static HSVColor positivo = const HSVColor.fromAHSV(1, 126, 1, 0.69);
  static HSVColor primaria = const HSVColor.fromAHSV(1, 221, 0.72, 0.22);
  static HSVColor secundaria = const HSVColor.fromAHSV(1, 48, 0.99, 1);
  static HSVColor g0 = const HSVColor.fromAHSV(1, 0, 0, 1);
  static HSVColor g1 = const HSVColor.fromAHSV(1, 0, 0, 0.97);
  static HSVColor g2 = const HSVColor.fromAHSV(1, 0, 0, 0.87);
  static HSVColor g3 = const HSVColor.fromAHSV(1, 0, 0, 0.75);
  static HSVColor g4 = const HSVColor.fromAHSV(1, 0, 0, 0.55);
  static HSVColor g5 = const HSVColor.fromAHSV(1, 0, 0, 0.4);
  static HSVColor g6 = const HSVColor.fromAHSV(1, 0, 0, 0.32);
  static HSVColor g7 = const HSVColor.fromAHSV(1, 0, 0, 0.25);
  static HSVColor g8 = const HSVColor.fromAHSV(1, 0, 0, 0.12);
  static HSVColor g9 = const HSVColor.fromAHSV(1, 0, 0, 0.05);
  static HSVColor preto = const HSVColor.fromAHSV(1, 242, 0, 0.0);
}
