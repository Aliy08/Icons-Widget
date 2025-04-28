import 'package:flutter/material.dart';
import 'package:hello_world/Scaffold.dart';
import 'package:hello_world/icons.dart';
import 'package:hello_world/text.dart';
import 'package:hello_world/image.dart';
import 'package:hello_world/icons.dart';
import 'package:hello_world/container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modul Material App',
      theme: ThemeData(primarySwatch: Colors.purple),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      themeMode: ThemeMode.dark,
      color: Colors.amberAccent,
      debugShowCheckedModeBanner: false,
      home: IconsWidget(),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    var elevatedButton = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      onPressed: () {
        setState(() {
          _counter++;
        });
      },
      child: Text('Tambah'),
    );

    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 20),
            elevatedButton,  
          ],
        ),
      ),
    );
  }
}