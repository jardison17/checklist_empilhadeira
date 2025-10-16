import 'package:flutter/material.dart';
import 'package:checklist_empilhadeira/model/transaction.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  // Lista de transações (exemplo)
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo tênis de corrida',
      value: 64.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 345.30,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Despesas Pessoais',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 26, 28, 26),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            child: const Card(
              color: Colors.blueAccent,
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Gráfico analista',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Column(
            children:
                _transactions.map((tr) {
                  return Card(
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 10,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        radius: 30,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: FittedBox(
                            child: Text('R\$${tr.value.toStringAsFixed(2)}'),
                          ),
                        ),
                      ),
                      title: Text(
                        tr.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        '${tr.date.day}/${tr.date.month}/${tr.date.year}',
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
