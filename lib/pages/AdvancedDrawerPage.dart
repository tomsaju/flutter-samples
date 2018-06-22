import 'package:flutter/material.dart';


///https://engineering.classpro.in/flutter-1-navigation-drawer-routes-8b43a201251e


const String _AccountName = "John Doe";
const String _AccountEmail = "johndoe@hogwarts.com";
const String _AccountAbbr = "JD";



class AdvancedDrawerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new DrawerPageState();
  }

}


class DrawerPageState extends State<AdvancedDrawerPage> {

  /*Drawer myDrawer = new Drawer(

      child: new Column(children: <Widget>[
        new UserAccountsDrawerHeader(
          accountName: const Text(_AccountName),
          accountEmail: const Text(_AccountEmail),
          currentAccountPicture: new CircleAvatar(
            backgroundColor: Colors.brown,
            child: new Text(_AccountAbbr),
          ),
          otherAccountsPictures: <Widget>[
            new GestureDetector(
              onTap: () => _onTapOtherAccounts(context),
              child: new Semantics(
                label: 'Switch Account',
                child: new CircleAvatar(
                  backgroundColor: Colors.brown,
                  child: new Text("SA"),
                ),
              ),
            )
          ],

        ),
        new ListTile(
          leading: new Icon(Icons.lightbulb_outline),
          title: new Text("Notes"),
          onTap: () => _onListTileTap(),
        ),
        new ListTile(
          leading: new Icon(Icons.lightbulb_outline),
          title: new Text('Notes'),
          onTap: () => _onListTileTap(),
        ),
        new Divider(),
        new ListTile(
          leading: new Text('Label'),
          trailing: new Text('Edit'),
          onTap: () => _onListTileTap(),
        ),
        new ListTile(
          leading: new Icon(Icons.label),
          title: new Text('Expense'),
          onTap: () => _onListTileTap(),
        ),
        new ListTile(
          leading: new Icon(Icons.label),
          title: new Text('Inspiration'),
          onTap: () => _onListTileTap(),
        ),
        new ListTile(
          leading: new Icon(Icons.label),
          title: new Text('Personal'),
          onTap: () => _onListTileTap(),
        ),
        new ListTile(
          leading: new Icon(Icons.label),
          title: new Text('Work'),
          onTap: () => _onListTileTap(),
        ),
        new ListTile(
          leading: new Icon(Icons.add),
          title: new Text('Create new label'),
          onTap: () => _onListTileTap(),
        ),
        new Divider(),
        new ListTile(
          leading: new Icon(Icons.archive),
          title: new Text('Archive'),
          onTap: () => _onListTileTap(),
        ),
        new ListTile(
          leading: new Icon(Icons.delete),
          title: new Text('Trash'),
          onTap: () => _onListTileTap(),
        ),
        new Divider(),
        new ListTile(
          leading: new Icon(Icons.settings),
          title: new Text('Settings'),
          onTap: () => _onListTileTap(),
        ),
        new ListTile(
          leading: new Icon(Icons.help),
          title: new Text('Help & feedback'),
          onTap: () => _onListTileTap(),
        )
      ])
  );*/


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
//using column instead of ListView can cause " pixel overflow  error"

          child: new ListView(
              padding: const EdgeInsets.only(top: 0.0),
              children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: const Text(_AccountName),
              accountEmail: const Text(_AccountEmail),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown,
                child: new Text(_AccountAbbr),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => _onTapOtherAccounts(context),
                  child: new Semantics(
                    label: 'Switch Account',
                    child: new CircleAvatar(
                      backgroundColor: Colors.brown,
                      child: new Text("SA"),
                    ),
                  ),
                )
              ],

            ),
            new ListTile(
              leading: new Icon(Icons.lightbulb_outline),
              title: new Text("Notes"),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.lightbulb_outline),
              title: new Text('Reminders'),
              onTap: () => _onListTileTap(context),
            ),
            new Divider(),
            new ListTile(
              leading: new Text('Label'),
              trailing: new Text('Edit'),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.label),
              title: new Text('Expense'),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.label),
              title: new Text('Inspiration'),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.label),
              title: new Text('Personal'),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.label),
              title: new Text('Work'),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.add),
              title: new Text('Create new label'),
              onTap: () => _onListTileTap(context),
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.archive),
              title: new Text('Archive'),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.delete),
              title: new Text('Trash'),
              onTap: () => _onListTileTap(context),
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.settings),
              title: new Text('Settings'),
              onTap: () => _onListTileTap(context),
            ),
            new ListTile(
              leading: new Icon(Icons.help),
              title: new Text('Help & feedback'),
              onTap: () => _onListTileTap(context),
            )
          ])
      ),
      appBar: new AppBar(
        title: new Text("Advanced Drawer"),
      ),
      body: new Center(
        child: new Text("Swipe for drawer"),
      ),
    );
  }

   _onTapOtherAccounts(context) {
    Navigator.of(context).pop();
    showDialog<Null>(
      context: context,
      child: new AlertDialog(
        title: const Text('Account switching not implemented.'),
        actions: <Widget>[
          new FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }


  _onListTileTap(context) {
    Navigator.of(context).pop();
    showDialog<Null>(
      context: context,
      child: new AlertDialog(
        title: const Text('Not Implemented'),
        actions: <Widget>[
          new FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}