import 'package:flutter/material.dart';
import 'package:flutter_expense_app/expenses_list.dart';
import 'package:flutter_expense_app/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerdExpense = [
    Expense(
        title: 'Flutter course',
        amount: 19.99,
        dateTime: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Movie',
        amount: 10.99,
        dateTime: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Dinning',
        amount: 39.99,
        dateTime: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Fuel',
        amount: 12.99,
        dateTime: DateTime.now(),
        category: Category.travel),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('The chart'),
            ExpensesList(expenses: _registerdExpense),
          ],
        ),
      ),
    );
  }
}
