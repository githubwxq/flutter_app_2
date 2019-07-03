import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('container page'),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            child: Text('hello jimmy',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.green,
              ),),
            //对齐
            alignment: Alignment.topCenter,
            //内间距
            padding: EdgeInsets.all(30.0),
            //颜色
//            color: Colors.yellow,
            width: 300.0,
            height: 300.0,
            //背景装饰---于color冲突
            decoration: BoxDecoration(
              color: Colors.brown,
              //渐变
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.green, Colors.blue]),
            ),
            //前景装饰
            foregroundDecoration: BoxDecoration(
              color: Colors.brown,
              //边框
              border: Border.all(
                width: 30.0,
                color: Color(0x11B9F6CA),
              ),
              //边框的角度
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            //高宽的限制
            constraints: BoxConstraints(maxWidth: 100.0),
            transform:Matrix4.rotationZ(1.0),

          ),
        ],
      ),
    );
  }

}