import 'package:flutter/material.dart';

//官方说这个很有用，但是应该尽量少用，因为其效率问题。
//当没有IntrinsicHeight包裹时，可以看到，蓝色控件的高度是不受限制的，
//当外层套一个IntrinsicHeight，蓝色控件高度就调整到与红色控件一样的高度了。
class IntrinsicHeightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IntrinsicHeight'),
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
