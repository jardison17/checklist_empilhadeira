import 'package:flutter/material.dart';
import '../model/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child:
          transactions.isEmpty
              ? Column(
                children: [
                  Text(
                    'Nada Por Aqui',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 56, 55, 54),
                      fontFamily: 'Lufga',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 200,
                    child: Image.asset('imagenwaiting.png', fit: BoxFit.cover),
                  ),
                ],
              )
              : ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (ctx, index) {
                  final tr = transactions[index];
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
                },
              ),
    );
  }
}
