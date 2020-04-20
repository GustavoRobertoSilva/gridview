import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Forms',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Forms'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextStyle textstyle =
  TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  final InputDecoration decoration = InputDecoration(
    border: OutlineInputBorder(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                  size: 190,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: decoration,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: decoration,
                ),
                SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  color: Colors.red,
                  minWidth: 160,
                  child: Text(
                    'Google',
                    style: textstyle,
                  ),
                ),
                MaterialButton(
                  color: Colors.blue,
                  minWidth: 160,
                  child: Text(
                    'Facebook',
                    style: textstyle,
                  ),
                ),
                MaterialButton(
                  color: Colors.orange,
                  minWidth: 160,
                  child: Text(
                    'E-mail',
                    style: textstyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}