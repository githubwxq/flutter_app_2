import 'package:flutter/material.dart';

//堆叠布局,后面的widget堆在前一个上面
//alignment:设置后面的widget布局在第一个widget的相对位置
//fit: StackFit.loose(疏松，如父容器宽300，则范围为0~300),expand(扩大到父容器constraints的最大),passthrough(父级的约束传给未定位的子集)
//overflow:Overflow.clip(溢出父容器的将被裁剪),visible(显示)
class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: IndexedStack(
        index: 1,
        alignment: const Alignment(0.0, 1.2),
//        overflow:Overflow.visible,
        children: <Widget>[
          Image.asset('images/meinv1.jpg'),
          Container(
            child: Text('jimmy'),
            color: Colors.yellow,
          ),
          Container(
            child: Text('hello jimmy'
            ,style: TextStyle(fontSize:20.0),),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
