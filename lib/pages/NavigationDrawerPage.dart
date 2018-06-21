import 'package:flutter/material.dart';

/// Create a Scaffold
/// Add a drawer
/// Populate the drawer with items
/// Close the drawer programmatically


class NavigationDrawerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new NavDrawerPageState();
  }


}

class NavDrawerPageState extends State<NavigationDrawerPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation drawer"),
      ),
      body: new Center(
       child: new Text("Swipe for nav drawer")
      ),
      drawer: new Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.

        child: new  ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(
              child: new Text('Drawer Header'),
              decoration: new BoxDecoration(
                color: Colors.blue,
              ),
            ),
            new  ListTile(
              leading: new Icon(Icons.map),
              title: new Text('Map'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            new  ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text('Album'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            new  ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('Phone'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),


      ),
    );
  }


}