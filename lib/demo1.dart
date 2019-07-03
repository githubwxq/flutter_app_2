import 'package:flutter/material.dart';


void main(){
 runApp( MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "wxqdemo",
       home: new HomePage(),
    );
  }

}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  HomeAppPage();
  }
}

class HomeAppPage extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Center(
        child: new Text("wxq"),
      ),
    );
  }

}















