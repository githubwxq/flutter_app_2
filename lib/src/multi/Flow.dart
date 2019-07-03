import 'package:flutter/material.dart';

class FlowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlowPage'),
      ),
      body: Flow(delegate: null),
    );
  }
}
