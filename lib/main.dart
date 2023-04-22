import 'package:flutter/material.dart';
import 'package:flutter_expense_app/theme/color_schemes.g.dart';
import 'package:flutter_expense_app/widgets/expenses.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
    darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
    home: const Expenses(),
  ));
}
