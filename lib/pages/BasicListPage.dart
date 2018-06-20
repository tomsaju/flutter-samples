import 'package:flutter/material.dart';


/**
 * Using the standard ListView constructor is perfect for lists that contain only a few items.
 *
 * use this inside body:=>
 *
 * ListView(
    children: <Widget>[
    ListTile(
    leading: Icon(Icons.map),
    title: Text('Map'),
    ),
    ListTile(
    leading: Icon(Icons.photo_album),
    title: Text('Album'),
    ),
    ListTile(
    leading: Icon(Icons.phone),
    title: Text('Phone'),
    ),
    ],
    );
 *
 */


class BasicListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return new BasicListPageState();
  }

}


class BasicListPageState extends State<BasicListPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Basic List")
      ),
      body: new  ListView(
        children: <Widget>[
          new  ListTile(
            leading: new Icon(Icons.map),
            title: new Text('Map'),
          ),
          new  ListTile(
            leading: new Icon(Icons.photo_album),
            title: new Text('Album'),
          ),
          new  ListTile(
            leading: new Icon(Icons.phone),
            title: new Text('Phone'),
          ),
        ],
      ),
    );

  }

}