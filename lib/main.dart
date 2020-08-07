import 'package:flutter/material.dart';
import 'dart:math';

// void main() => runApp(MyApp());

// void main() {
//   runApp(
//     MaterialApp(
//       home: MyApp(),
//     ),
//   );
// }

// /// This Widget is the main application widget.
// class MyApp extends StatelessWidget {
//   static const String _title = 'ClickAndColor';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// final Shader linearGradient = LinearGradient(
//   colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
// ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

// class MyStatefulWidget extends StatefulWidget {
//   // MyStatefulWidget({Key key}) : super(key: key);

//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   // int _count = 0;

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Work. Zimenkov'),
//       ),
//       body: Center(
//           child: Text(
//         'Hey there',
//         style: new TextStyle(
//             fontSize: 36.0, foreground: Paint()..shader = linearGradient),
//       )),

//       backgroundColor: Colors.blue[500],
//       // floatingActionButton: FloatingActionButton(
//       // onPressed: () => setState(() => _count++),
//       // tooltip: 'Increment Counter',
//       // child: const Icon(Icons.add),
//       // ),
//     );
//   }
// }

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

final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
).createShader(Rect.fromLTWH(0.0, 100.0, 100.0, 670.0));

class _MyAppState extends State<MyApp> {
  List colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();

  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(3));
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
              fontSize: 36.0, foreground: Paint()..shader = linearGradient),
        ),
        color: colors[index],
      ),
    );
  }
}
