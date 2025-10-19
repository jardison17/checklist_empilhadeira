import 'package:flutter/material.dart';
import './model/transaction.dart';
import 'package:intl/intl.dart';

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

  final titleController = TextEditingController();
  final valeuController = TextEditingController();

  final List<Transaction> _transactions = [
    Transaction(id: 't1', title: 'Tênis', value: 64.84, date: DateTime.now()),
    Transaction(
      id: 't2',
      title: 'Fone de Ouvido 2',
      value: 99.99,
      date: DateTime.now(),
    ),
    Transaction(id: 't2', title: 'mause', value: 99.00, date: DateTime.now()),
    Transaction(
      id: 't7',
      title: 'mause sem fio',
      value: 99.00,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Despesas Pessoais')),
      body: Column(
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

          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(labelText: 'Titulo'),
                  ),
                  TextField(
                    controller: valeuController,
                    decoration: InputDecoration(labelText: 'valor R\$'),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: FloatingActionButton(
                          child: Text(
                            'Nova Transação',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 70, 70, 70),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
