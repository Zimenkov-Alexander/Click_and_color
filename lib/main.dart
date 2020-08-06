import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'ClickAndColor';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  // MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Work. Zimenkov'),
      ),
      body: Center(
          child:
              Text('Hey there', style: Theme.of(context).textTheme.headline4)),
      backgroundColor: Colors.red,
      // floatingActionButton: FloatingActionButton(
      // onPressed: () => setState(() => _count++),
      // tooltip: 'Increment Counter',
      // child: const Icon(Icons.add),
      // ),
    );
  }
}
