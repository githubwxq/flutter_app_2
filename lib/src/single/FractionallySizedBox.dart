import 'package:flutter/material.dart';

//高宽因子为null，child的宽高则会尽量充满整个区域。
//高宽因子不为null，实际的最大宽高则为当前的宽高乘以这个因子；
//child设置的尺寸无效
class FractionallySizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox'),
      ),
      body: Container(
        color: Colors.yellow,
        height: 150.0,
        width: 150.0,
        margin: EdgeInsets.all(10.0),
        child: FractionallySizedBox(
          alignment: Alignment.topRight,
          widthFactor: 0.5,
          heightFactor: 1.5,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
