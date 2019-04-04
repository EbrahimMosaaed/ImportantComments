import 'package:flutter/material.dart';

// dart is typed language which means u hve to defined methods use /var /to know what's fun hold or what's type of var

void main() {
  // void mean empty
  runApp(MyApp()); //MyApp() this how to create object form class MyApp
}
//void main() => runApp(MyApp()); shortcut if function hve one statment

// StatelessWidget convert it StatefulWidget
// state is data store in widget may changes later
class MyApp extends StatefulWidget {

  @override // type creatstate then it will pop up
  State<StatefulWidget> createState() { // means state object belong to StatefulWidget class
    // TODO: implement createState
    return _MyAppState();
  }
}
// State<MyApp> tell flutter that _MyAppState class belong to MyApp widget or class
class _MyAppState extends State<MyApp>{ //_NameClass it use just insde MyApp class and (_NameClass ) till that convention not usable by other classes or other file just 


  @override // bulid method written in StatelessWidget class and it means we overwrite build method 3an 3amd this make code easy and readable when work with team
  Widget build(BuildContext context) {// bulid will execute when data changes or when firs loaading
    // bulid return widget but to be clear add widget word to prevent errors to display
    // context hve info about app and postion where clors and thems is drawen / BulidContext is type of context like word widget is type of what bulid method will return
    return MaterialApp(
      // MaterialApp widget create all app
      home: Scaffold(
          // widget scaffold drawn onto screen when app loading/cret new page//background defult whit
          appBar: AppBar(
            title: Text('emptypage'),
          ),
          // body all space under appBar
          body: Column(children: [
            Container(
              margin: EdgeInsets.all(
                  10.0), // allow to make some space / EdgeInsets class inside matrial design /all constractor on it
              child: RaisedButton(
                onPressed:
                    () {}, // () {} anynmouse func with no name and body yet
                child: Text('Add Proudect'),
              ),
// RaisedButton button wtih spacial widget with background color
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset("assets/food.jpg"),
                  Text('Food Offer')
                ],
              ),
            ),
          ])),
    );
  }
}
