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
          Column(
            children:
                _transactions.map((tr) {
                  return Card(
                    child: ListTile(
                      title: Text(tr.title),
                      subtitle: Text(DateFormat('dd/MM/yyyy').format(tr.date)),
                      trailing: Text(
                        'R\$ ${tr.value.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Color.fromARGB(255, 233, 80, 3),
                        ),
                      ),
                    ),
                  );
                }).toList(),
          ),
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(decoration: InputDecoration(labelText: 'Titulo')),
                  TextField(
                    decoration: InputDecoration(labelText: 'valor R\$'),
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
