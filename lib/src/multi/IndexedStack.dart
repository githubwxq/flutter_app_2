import 'package:flutter/material.dart';

class IndexedStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStackPage'),
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
