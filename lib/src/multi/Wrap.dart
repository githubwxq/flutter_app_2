import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WrapBox'),
      ),
      body: Wrap(
        spacing: 20.0,
        runSpacing: 4.0,
        children: <Widget>[
          Chip(
            avatar: Icon(
              Icons.add,
              color: Colors.blue,
            ),
            label: Text('jimmy1'),
          ),
          Chip(
            avatar: Icon(
              Icons.add,
              color: Colors.blue,
            ),
            label: Text('jimmy2'),
          ),
          Chip(
            avatar: Icon(
              Icons.add,
              color: Colors.blue,
            ),
            label: Text('jimmy3'),
          ),
          Chip(
            avatar: Icon(
              Icons.add,
              color: Colors.blue,
            ),
            label: Text('jimmy4'),
          ),
          Chip(
            avatar: Icon(
              Icons.add,
              color: Colors.blue,
            ),
            label: Text('jimmy5'),
          ),
          Chip(
            avatar: Icon(
              Icons.add,
              color: Colors.blue,
            ),
            label: Text('jimmy6'),
          ),
          Chip(
            avatar: Icon(
              Icons.add,
              color: Colors.blue,
            ),
            label: Text('jimmy7'),
          ),
          Chip(
            avatar: Icon(
              Icons.add,
              color: Colors.blue,
            ),
            label: Text('jimmy8'),
          ),
        ],
      ),
    );
  }
}
