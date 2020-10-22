import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Hello World App',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Hello'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
          CustomButton()
        ],
      ),
      // body is the majority of the screen.
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello, world!'),
              Text('More Text'),
              Counter(),
              BetterCounter(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('CustomButton was tapped!');
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightBlue,
        ),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}

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



// class AppBar extends StatelessWidget{
//   AppBar({this.title});
//   final Widget title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height : 56,
//       padding: EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: BoxDecoration(color: Colors.orange),
//
//       child: Row(
//         children: <Widget>[
//           IconButton(
//             icon: Icon(Icons.menu),
//             tooltip: 'Navigation Menu',
//             onPressed: null,
//           ),
//           Expanded(
//             child: title,
//           ),
//           IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Scaffold extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//
//         children: <Widget>[
//           AppBar(
//             title : Text(
//               'Hello World',
//               style : Theme.of(context).primaryTextTheme.headline6,
//             ),
//           ),
//           Expanded(
//             child: Center(
//               child: Text('Hello, World!'),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }