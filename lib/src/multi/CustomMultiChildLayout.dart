import 'package:flutter/material.dart';

class CustomMultiChildLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomMultiChildLayout'),
      ),
      body: CustomMultiChildLayout(delegate: null,),
    );
  }
}
