import 'package:flutter/material.dart';

// ABOUT
// Combination of a StatefulWidget and a State object
// Widgets - are temporary objects, used to construct a presentation of the application in its current state
// State Objects - persistent between calls to build(), allowing them to remember information

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    //A call to setState tells Flutter that the state changed, causing it to rerun the build method and update values
    setState(() {
      _counter++;
    });
  }

  @override
  //The build method is run every time setState is called
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