import 'package:flutter/material.dart';

//maxWidth，maxHeight修改后热重载好像无效，需要终止后再运行才能看到效果
//只有当maxWidth，maxHeight大于等于父容器的限制范围child才会显示
//child不能超出自己的范围
//最小以及最大宽高度，如果为null的时候，就取父节点的constraint代替（也就是父容器的最大值）。
class OverflowBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox'),
      ),
      body: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.yellow,
        padding: EdgeInsets.all(20.0),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxWidth: 159.0,
          maxHeight: 300.0,
          child: Container(
            color:  Colors.blue,
            width: 300.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}
