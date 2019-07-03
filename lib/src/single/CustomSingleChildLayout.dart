import 'package:flutter/material.dart';

class CustomSingleChildLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomSingleChildLayout'),
      ),
      body: Container(
        color: Colors.yellow,
//        child: CustomSingleChildLayout(
////          index: 1
//        ),
      ),
    );
  }
}
