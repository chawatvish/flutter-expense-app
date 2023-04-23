import 'package:flutter/material.dart';
import 'package:flutter_expense_app/models/expense.dart';
import 'package:flutter_expense_app/widgets/expense_list/expenses_list.dart';
import 'package:flutter_expense_app/widgets/new_expense.dart';

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

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              NewExpense(),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Text('The chart'),
            Expanded(
              child: ExpensesList(expenses: _registerdExpense),
            ),
          ],
        ),
      ),
    );
  }
}
