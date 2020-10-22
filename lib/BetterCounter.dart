import 'dart:developer';
import 'package:flutter/material.dart';

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