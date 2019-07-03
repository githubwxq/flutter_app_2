import 'package:flutter/material.dart';

class LifecyclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new LifecycleAppPage(),
    );
  }

}

class LifecycleAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LifecycleStatePage();
  }
}

class LifecycleStatePage extends State<LifecycleAppPage> with WidgetsBindingObserver {

  //当插入渲染树的时候调用，这个函数只调用一次
  @override
  void initState() {
    print('jimmy,initState');
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  //紧跟在initState后面调用
  @override
  void didChangeDependencies() {
    print('jimmy,didChangeDependencies');
    super.didChangeDependencies();
  }

  //调用setState时回回调此方法
  //比较新老widget
  @override
  void didUpdateWidget(LifecycleAppPage oldWidget) {
    print('jimmy,didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  //在dispose之前调用
  @override
  void deactivate() {
    print('jimmy,deactivate');
    super.deactivate();
  }

  //组件要被销毁了，就会回调这个函数
  @override
  void dispose() {
    print('jimmy,dispose');
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch(state){
      case AppLifecycleState.inactive:
        print('AppLifecycleState.inactive');
        break;
      case AppLifecycleState.paused:
        print('AppLifecycleState.paused');
        break;
      case AppLifecycleState.resumed:
        print('AppLifecycleState.resumed');
        break;
      case AppLifecycleState.suspending:
        print('AppLifecycleState.suspending');
        break;
    }

    super.didChangeAppLifecycleState(state);
  }


  @override
  Widget build(BuildContext context) {
    print('jimmy,build');
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('liftcycle'),
      ),
      body: new Center(
        child: new Text('看日志'),
      ),
    );
  }

}