import 'dart:developer';
import 'package:flutter/material.dart';

//Widgets are temporary objects, used to construct a presentation of the application in its current state
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

//State objects persis between calls to Build()
class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment,
          child: Text('Increment'),
        ),
        Text('Count: $_counter'),
      ],
    );
  }
}