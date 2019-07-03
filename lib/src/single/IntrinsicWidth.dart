import 'package:flutter/material.dart';

//官方说这个很有用，但是应该尽量少用，因为其效率问题。
//当stepWidth不是null的时候，IntrinsicWidth的宽度将会是stepWidth的倍数，始终包含child。
//当stepHeight为null的时候，高度取最大高度。
class IntrinsicWidthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IntrinsicWidth'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Container(
          color: Colors.green,
          child: new IntrinsicWidth(
            stepHeight: 60.0,
            stepWidth: 100.0,
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.red,
                  height: 50.0,
                ),
                Container(
                  color: Colors.blue,
                  width: 150.0,
                  height: 50.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
