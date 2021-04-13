import 'package:flutter/material.dart';
import 'package:fourtyfour_mask/geburtstage.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      /* routes: <String, WidgetBuilder>{
          "/a": (BuildContext context) => new Geburtstage("Fred"), 
        }*/
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('44'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('44'),
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                '44',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Startseite'),
            onTap: () => {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Geburtstage("Krieg")))
            },
          ),
          ListTile(
            leading: Icon(Icons.cake),
            title: Text('Geburtstage'),
            onTap: () => {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new Geburtstage("Sebastian")))
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment_ind_sharp),
            title: Text('Strafen'),
            onTap: () => {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Geburtstage("Cloud")))
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_camera_rounded),
            title: Text('Medien'),
            onTap: () => {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Geburtstage("Tim")))
            },
          ),
        ],
      ),
    );
  }
}
