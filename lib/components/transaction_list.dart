import 'package:flutter/material.dart';
import '../model/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          transactions.map((tr) {
            return Card(
              child: ListTile(
                title: Text(tr.title),
                subtitle: Text(DateFormat('dd/MM/yyyy').format(tr.date)),
                trailing: Text(
                  'R\$ ${tr.value.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color.fromARGB(255, 70, 70, 70),
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }
}
