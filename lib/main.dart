import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
   @override
  _HomePageState createState() => new _HomePageState();
}


class _HomePageState extends State<HomePage> {

  String mytext = "HEllo WorlD";

  void _changeText(){
    setState((){
      if (mytext.startsWith("H")) {
        mytext = "Welcome to my app";
      }else{
        mytext = "Hello World";
      }
    });
  }
  Widget _bodyWidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(mytext),
            new RaisedButton(
              child: new Text("click"),
              onPressed: _changeText,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodyWidget(),
    );
  }
}