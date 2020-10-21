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
        ],
      ),
      // body is the majority of the screen.
      body: Center(
        child: Text('Hello, world!'),
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