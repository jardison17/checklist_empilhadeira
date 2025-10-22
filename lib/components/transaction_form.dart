import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valeuController = TextEditingController();

  final void Function(String, double) onSubmit;
  TransactionForm(this.onSubmit, {super.key});

  _submitForm() {
    final Title = titleController.text;
    final value = double.tryParse(valeuController.text) ?? 0;

    if (Title.isEmpty || value <= 0) {
      return;
    }

    onSubmit(Title, value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                controller: titleController,
                onSubmitted: (_) => _submitForm,

                decoration: InputDecoration(labelText: 'Titulo'),
              ),
              TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSubmitted: (_) => _submitForm,
                controller: valeuController,
                decoration: InputDecoration(labelText: 'valor R\$'),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FloatingActionButton(
                      onPressed: _submitForm,
                      child: Text(
                        'Nova Transação',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 70, 70, 70),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
