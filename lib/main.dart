import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.pinkAccent,
            border: Border.all(width: 30.0, color: Colors.white),
            boxShadow: [
              BoxShadow(
                  color: Colors.green,
                  offset: Offset(2.0, 5.0),
                  blurRadius: 5.0,
                  spreadRadius: 2.0)
            ]),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/guess_logo.png',
                    height: 85,
                    width: 60,
                  ),
                  Text(
                    'GUESS ',
                    style: TextStyle(fontSize: 55.0, color: Colors.deepPurple),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' THE NUMBER',
                    style: TextStyle(fontSize: 20.0, color: Colors.lightGreen),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(

                obscureText: true,
                decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    // labelText: 'Enter Name',
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed:(){},
                child: Text('GUESS'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
