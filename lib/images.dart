import 'dart:io';

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImagePage'),
      ),
      body: new ListView(
        children: <Widget>[
          //普通构造方法
          new Image(image: AssetImage('images/meinv1.jpg')),
          //资源图片
          Image.asset(
            'images/meinv2.jpg',
            width: 200.0,
            height: 160.0,
            color: Colors.green,
            colorBlendMode: BlendMode.colorBurn,
            repeat: ImageRepeat.repeatX,
          ),
          //文件图片
//          Image.file(new File('/storage/emulated/0/Download/meinv1.jpg')),
          //网络图片
          Image.network('http://pic1.win4000.com/wallpaper/8/5121d1ba03fd9.jpg'),

          //占位符与淡入淡出效果
          Center(
            child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'http://pic1.win4000.com/wallpaper/8/5121d1ba03fd9.jpg'),
          ),
          Center(
            child: CachedNetworkImage(
                placeholder: null,
                imageUrl:
                    'http://pic1.win4000.com/wallpaper/8/5121d1ba03fd9.jpg'),
          ),
        ],
      ),
    );
  }
}
