import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Container(
        color: Colors.yellow,
        child: IndexedStack(
//          index: 1
        ),
      ),
    );
  }
}
