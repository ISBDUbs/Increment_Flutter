// ignore_for_file: avoid_print, must_be_immutable
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String myButtonName = 'Clicked';
  int _buttonPressCount = 0;

  void _incrementButtonPressCount() {
    setState(() {
      _buttonPressCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Teddy App',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: null,
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Button Count: ',
                style: TextStyle(fontSize: 28, fontFamily: 'IndieFlower'),
              ),
              Text(
                '$_buttonPressCount',
                style: const TextStyle(
                    fontFamily: 'IndieFlower',
                    fontSize: 48,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementButtonPressCount,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ));
  }
}
