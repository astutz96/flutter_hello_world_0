import 'package:flutter/material.dart';

// ABOUT
// This is an alternative implementation of the same functionality provided by Counter
// The difference is we have separated the concerns:
// 1. Displaying the Counter - Handled by BetterCounterDisplay
// 2. Changing/Updating the counter - Handled by BetterCounterIncrementor

class BetterCounterDisplay extends StatelessWidget{

  final int count;

  BetterCounterDisplay({this.count});

  @override
  Widget build(BuildContext context) {
    return Text('count: $count');
  }
}

class BetterCounterIncrementor  extends StatelessWidget {

  BetterCounterIncrementor ({this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Increment'),
    );
  }
}

class BetterCounter extends StatefulWidget{
  @override
  _BetterCounterState createState() => _BetterCounterState();
}

class _BetterCounterState extends State<BetterCounter>{
  int _counter = 0;

  void _increment(){
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      BetterCounterIncrementor(onPressed: _increment),
      BetterCounterDisplay(count: _counter),
    ]);
  }
}