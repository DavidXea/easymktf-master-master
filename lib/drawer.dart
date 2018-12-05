import 'package:flutter/material.dart';



Widget drawer(context){
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new Container(
            height: 180.0,
            child: new UserAccountsDrawerHeader(
              accountEmail: new Text("beringela@gmail.com"),
              accountName: new Text("beringela"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage("assets/berinjela.jpg"),
              ),

              decoration: new BoxDecoration(
                color: Colors.black54,
                gradient: new LinearGradient(
                  colors: <Color>[
                    new Color.fromARGB(255, 18, 68, 144),
                    new Color.fromARGB(255, 66, 165, 245)
                  ],
                  stops: [0.0, 0.9],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                ),
              ),
            ),
          ),
          new ListTile(
              leading: new Icon(Icons.favorite),
              title: new Text('Favoritos'),
              onTap: () {
                Navigator.pop(context);
//                Navigator.of(context).pushNamed(Home.tag);
              }
          ),
          new ListTile(
              leading: new Icon(Icons.perm_identity),
              title: new Text('Conta'),
              onTap: () {
                Navigator.pop(context);
//                Navigator.of(context).pushNamed(Home.tag);
              }
          ),
          new ListTile(
              leading: new Icon(Icons.exit_to_app),
              title: new Text('Sign Out'),
              onTap: () {
                Navigator.pop(context);
              }
          ),
          new Divider(),
          new ListTile(
              leading: new Icon(Icons.airline_seat_individual_suite),
              title: new Text('Preferencias'),
              onTap: () {
                Navigator.pop(context);
//                Navigator.of(context).pushNamed(Home.tag);
              }
          ),
          new ListTile(
              leading: new Icon(Icons.help_outline),
              title: new Text('Ajuda'),
              onTap: () {
                Navigator.pop(context);
//                Navigator.of(context).pushNamed(Home.tag);
              }
          ),
          new ListTile(
              leading: new Icon(Icons.share),
              title: new Text('Compartilhar'),
              onTap: () {
                Navigator.pop(context);
//                Navigator.of(context).pushNamed(Home.tag);
              }
          ),
        ],
      )
  );
}