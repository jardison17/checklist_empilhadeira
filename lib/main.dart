import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/transaction_User.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Despesas Pessoais',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Despesas Pessoais')),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Card(
                color: Colors.blue,
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Gráfico', style: TextStyle(color: Colors.white)),
                ),
              ),
              TransactionUser(),
            ],
          ),
        ),
      ),
    );
  }
}
