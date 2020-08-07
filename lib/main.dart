import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List colorsArr = [
    Colors.red,
    Colors.red[50],
    Colors.red[100],
    Colors.red[200],
    Colors.red[300],
    Colors.red[400],
    Colors.red[500],
    Colors.red[600],
    Colors.red[700],
    Colors.red[800],
    Colors.red[900],
    Colors.green,
    Colors.green[100],
    Colors.green[200],
    Colors.green[300],
    Colors.green[400],
    Colors.green[500],
    Colors.green[600],
    Colors.green[700],
    Colors.green[800],
    Colors.green[900],
    Colors.yellow,
    Colors.yellow[100],
    Colors.yellow[200],
    Colors.yellow[300],
    Colors.yellow[400],
    Colors.yellow[500],
    Colors.yellow[600],
    Colors.yellow[700],
    Colors.yellow[800],
    Colors.yellow[900],
    Colors.pink[100],
    Colors.pink[200],
    Colors.pink[300],
    Colors.pink[400],
    Colors.pink[500],
    Colors.pink[600],
    Colors.pink[700],
    Colors.pink[800],
    Colors.pink[900],
    Colors.orange[100],
    Colors.orange[200],
    Colors.orange[300],
    Colors.orange[400],
    Colors.orange[500],
    Colors.orange[600],
    Colors.orange[700],
    Colors.orange[800],
    Colors.orange[900],
    Colors.lime[100],
    Colors.lime[200],
    Colors.lime[300],
    Colors.lime[400],
    Colors.lime[500],
    Colors.lime[600],
    Colors.lime[700],
    Colors.lime[800],
    Colors.lime[900],
    Colors.lightGreen[100],
    Colors.lightGreen[200],
    Colors.lightGreen[300],
    Colors.lightGreen[400],
    Colors.lightGreen[500],
    Colors.lightGreen[600],
    Colors.lightGreen[700],
    Colors.lightGreen[800],
    Colors.lightGreen[900],
    Colors.teal[100],
    Colors.teal[200],
    Colors.teal[300],
    Colors.teal[400],
    Colors.teal[500],
    Colors.teal[600],
    Colors.teal[700],
    Colors.teal[800],
    Colors.teal[900],
    Colors.cyan[100],
    Colors.cyan[200],
    Colors.cyan[300],
    Colors.cyan[400],
    Colors.cyan[500],
    Colors.cyan[600],
    Colors.cyan[700],
    Colors.cyan[800],
    Colors.cyan[900],
    Colors.blue[100],
    Colors.blue[200],
    Colors.blue[300],
    Colors.blue[400],
    Colors.blue[500],
    Colors.blue[600],
    Colors.blue[700],
    Colors.blue[800],
    Colors.blue[900],
    Colors.purple[100],
    Colors.purple[200],
    Colors.purple[300],
    Colors.purple[400],
    Colors.purple[500],
    Colors.purple[600],
    Colors.purple[700],
    Colors.purple[800],
    Colors.purple[900],
    Colors.deepPurple[100],
    Colors.deepPurple[200],
    Colors.deepPurple[300],
    Colors.deepPurple[400],
    Colors.deepPurple[500],
    Colors.deepPurple[600],
    Colors.deepPurple[700],
    Colors.deepPurple[800],
    Colors.deepPurple[900],
  ];

  Random random = new Random();
  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(colorsArr.length - 1));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: RaisedButton(
        onPressed: () => changeIndex(),
        child: Text(
          'Hey there',
          style: new TextStyle(
            color: Colors.white,
            fontSize: 36.0,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(0.0, 0.0),
                blurRadius: 4.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              Shadow(
                offset: Offset(5.0, 5.0),
                blurRadius: 15.0,
                color: Color.fromARGB(200, 0, 0, 0),
              ),
            ],
          ),
        ),
        color: colorsArr[index],
      ),
    );
  }
}
