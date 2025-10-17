import 'package:flutter/material.dart';
import './model/transaction.dart';

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

  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis',
      value: 64.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Fone de Ouvido',
      value: 99.99,
      date: DateTime.now(),
    ),
    Transaction(id: 't2', title: 'mause', value: 99.00, date: DateTime.now()),
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
          Column(
            children:
                _transactions.map((tr) {
                  return Card(
                    child: ListTile(
                      title: Text(tr.title),
                      subtitle: Text(
                        '${tr.date.day}/${tr.date.month}/${tr.date.year}',
                      ),
                      trailing: Text(
                        'R\$ ${tr.value.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Color.fromARGB(255, 25, 27, 25),
                        ),
                      ),
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
