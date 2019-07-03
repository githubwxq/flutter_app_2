import 'package:flutter/material.dart';

//高宽同时设置，比例(aspectRatio)无效
//width = height * aspectRatio;
//height = width / aspectRatio;
//aspectRatio不能为null,必须大于0,必须是有限的.
class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio'),
      ),
      body: Container(
//        width: 200.0,
        height: 100.0,
        color: Colors.yellow,
        child: AspectRatio(
          aspectRatio: 6.0,
          child: Image.asset('images/meinv1.jpg'),
        ),
      ),
    );
  }
}
