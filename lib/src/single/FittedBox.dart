import 'package:flutter/material.dart';

//没有限制时FittedBox属性无效
//fill:高宽刚好填满
//contain:比例不变，包含
//cover:比例不变，填满
//fitWidth:比例不变，包含宽
//fitHeight:比例不变，包含高
//none:child尺寸不变
//scaleDown:如果child尺寸需要缩小，等同contain，否则等同none
class FittedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fitted box'),
      ),
      body: Container(
        width:600,
        height: 200.0,
        color: Colors.green,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset('images/meinv1.jpg'),
        ),
      ),
    );
  }
}
