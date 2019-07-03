import 'package:flutter/material.dart';

//没限制时：child按自己的尺寸来，可以超出SizedOverflowBox容器的大小
//有限制时：按限制来渲染
class SizedOverflowBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedOverflowBox'),
      ),
      body: Container(
        color: Colors.yellow,
        width: 150.0,
        height: 300.0,
        padding: EdgeInsets.all(10.0),
        child: SizedOverflowBox(
          size: Size(50.0, 100.0),
          child: Container(
            color: Colors.red,
            width: 70.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}
