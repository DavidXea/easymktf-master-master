import 'package:flutter/material.dart';
import 'package:easymktf/drawer.dart';



class Trending extends StatefulWidget{
  TrendingState createState()=> TrendingState();
}


class TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              'dsadasd',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
//      drawer: drawer(context),
    );
  }
}