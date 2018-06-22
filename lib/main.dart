import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:startup_namer/pages/BasicListPage.dart';
import 'package:startup_namer/pages/NavigationDrawerPage.dart';
import 'package:startup_namer/pages/AdvancedDrawerPage.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Startup name generator',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new RandomWords(),
      routes: <String,WidgetBuilder>{
        '/basiclistpage' : (BuildContext context) =>new BasicListPage(),
        '/navigationdrawerpage' : (BuildContext context) =>new NavigationDrawerPage(),
        '/navigationdrawerpage2' : (BuildContext context) =>new AdvancedDrawerPage(),

      },
      );

    }
}


class RandomWords extends StatefulWidget{
  @override
  State<RandomWords> createState() => new RandomWordsState();

}

class RandomWordsState extends State<RandomWords> {

  final _suggestions =  <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved =new  Set<WordPair>();
  var _topicsList = new Set<String>();


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Startup name generator"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list),onPressed: _pushSaved),
          new IconButton(icon: new Icon(Icons.android), onPressed: _pushTests),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {

    Navigator.of(context).push(
      new MaterialPageRoute(
          builder: (context) {
            final tiles = _saved.map(
                (_suggestion){
                  return new ListTile(
                    title: new Text(
                      _suggestion.asPascalCase,
                      style: _biggerFont,
                    ),
                  );
                },
            );
            final divided = ListTile
                            .divideTiles(
              context: context,
              tiles: tiles,
            )
            .toList();


            return new Scaffold(
              appBar: new AppBar(
                title: new Text('Saved Suggestions'),
              ),
              body: new ListView(children: divided),
            );
          },
      ),
    );
  }

  void _pushTests() {
_topicsList.add("Hello World");
_topicsList.add("Basic list");
_topicsList.add("Navigation drawer");
_topicsList.add("Navigation drawer 2");

    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          final tiles = _topicsList.map(
                (topic){
              return new ListTile(
                title: new Text(
                  topic.toString(),
                  style: _biggerFont,
                ),
                onTap:(){ _openTopic(topic.toString().toLowerCase());},
              );
            },
          );
          final divided = ListTile
              .divideTiles(
            context: context,
            tiles: tiles,
          )
              .toList();


          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Topics'),
            ),
            body: new ListView(children: divided),
          );
        },
      ),
    );
  }


  void _pushFirstTest() {

    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text("Hello World"),
            ),
            body: new Center(
              child: new Container(
                child: new Text("Welcome to Flutter"),
              ),
            ),
          );
        },
      ),
    );
  }






  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i){

        if(i.isOdd) return new Divider();

        final index = i ~/2;
        if(index>= _suggestions.length){

          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }

  Widget _buildRow(WordPair suggestion) {
    final alreadySaved = _saved.contains(suggestion);
    return new ListTile(
        title: new Text(
          suggestion.asPascalCase,
          style: _biggerFont,
        ),
      trailing: new Icon(
      alreadySaved? Icons.favorite: Icons.favorite_border,
      color:alreadySaved ? Colors.red : null
      ),
      onTap: () {
          setState((){
          print("here");
            if(alreadySaved){
              _saved.remove(suggestion);
            }else{
              _saved.add(suggestion);
            }
          });
      },
    );
  }

  _openTopic(String topic) {
    print("on tap called for "+topic);
    if(topic=="hello world"){
      _pushFirstTest();
    }else if(topic=="basic list"){
      Navigator.of(context).pushNamed('/basiclistpage');
    }else if(topic=="navigation drawer"){
      Navigator.of(context).pushNamed('/navigationdrawerpage');
    }else if(topic=="navigation drawer 2"){
      Navigator.of(context).pushNamed('/navigationdrawerpage2');
    }
  }

}





