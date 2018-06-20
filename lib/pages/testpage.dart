import 'package:flutter/material.dart';



class TestPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return new TestPageState();
  }
}

class TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(

        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}

