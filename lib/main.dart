import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(checklistempilhadeira());

class checklistempilhadeira extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Checklist Digital",
            style: TextStyle(color: Colors.white),
            textScaler: TextScaler.linear(1),
          ),
          backgroundColor: const Color.fromARGB(255, 241, 90, 2),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Digite algo...',
              ),
            ),
            Padding(padding: const EdgeInsets.all(12.0)),
          ],
        ),
      ),
    );
  }
}
