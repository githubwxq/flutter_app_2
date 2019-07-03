import 'package:flutter/material.dart';

////在主轴上，子节点按照顺序进行布局，在交叉轴上，子节点尺寸会被拉伸，以适应交叉轴的区域。
class ListBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListBody'),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ListBody(
            mainAxis: Axis.vertical,
            reverse: false,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.yellow,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.green,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.blue,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.black,
                width: 50.0,
                height: 50.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
