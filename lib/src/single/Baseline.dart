import 'package:flutter/material.dart';

class BaselinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baseline'),
      ),
      body: Container(
        color: Colors.yellow,
//        child: Baseline(
////          index: 1
//        ),
      ),
    );
  }
}
