import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffstagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OffstagePageState();
  }
}

class OffstagePageState extends State<OffstagePage> {
  bool offstage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offstage'),
      ),
      body: Column(
        children: <Widget>[
          Offstage(
            offstage: offstage,
            child: Container(
              color: Colors.blue,
              height: 100.0,
            ),
          ),
          CupertinoButton(
            child: Text('jimmy'),
            onPressed: (){
              setState(() {
                offstage = ! offstage;
              });
            },
          ),
        ],
      ),
    );
  }
}
