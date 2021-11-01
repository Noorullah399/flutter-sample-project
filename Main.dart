import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: Mydicee(),
      ),
    ),
  );
}

class Mydicee extends StatefulWidget {

  @override
  _MydiceeState createState() => _MydiceeState();
}

class _MydiceeState extends State<Mydicee> {
  int leftdicenumber =6;
  int rightdiceenumber =6;
  void makeafunction(){setState(() {
    leftdicenumber= Random().nextInt(6)+(1);
    rightdiceenumber= Random().nextInt(6)+(1);
  });}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                makeafunction();
                print('Left button got pressed');
              },
              child: Image.asset('images/dice$leftdicenumber.png',),

            ),
          ),
          Expanded(

            child: TextButton(
              onPressed: () {
               makeafunction();

                print('Right Button Got pressed');
              },
              child: Image.asset('images/dice$rightdiceenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
