import 'package:flutter/material.dart';
import 'life.dart';

void main() {
  runApp(new MyApp());
}

//无状态
class MyApp extends StatelessWidget {

  final int a = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //22参数
        title: 'jimmy',
        //会覆盖title的设置
        onGenerateTitle: (BuildContext context) => 'jimmy1',
        home: new HomePage(),
        routes: {
//        Navigator.defaultRouteName:(BuildContext context) => HomePage(),//navigator.pushName()
//        '/':(BuildContext context) => HomePage(),
          '/OnePage': (BuildContext context) => OnePage(),
          '/LifecyclePage': (BuildContext context) => LifecyclePage(),
        },
        //初始路由
//        initialRoute: '/OnePage',
        initialRoute: '/LifecyclePage',
        //生成路由
//      onGenerateRoute: (RouteSettings settings) {
//        return new MaterialPageRoute(builder: (BuildContext context) {
//          return OnePage();
//        });
////        return new PageRouteBuilder(pageBuilder: null)
//      },
        //未知路由
//      onUnknownRoute: (RouteSettings settings) {
//        return new MaterialPageRoute(builder: (BuildContext context) {
//          return OnePage();
//        });
//      },
        //导航监听器
        navigatorObservers: [new MyObserver()],
        //优先级是最高的
//      builder: (BuildContext context, Widget child){
////        return new Text('build 生成');
//        return new OnePage();
//      },
        color: Colors.red,
        theme: new ThemeData(
//          brightness: Brightness.dark,
          primaryColor: Colors.green,
        ),
        //显示网格
//      debugShowMaterialGrid: true,
//        showPerformanceOverlay: true,
//        showSemanticsDebugger: true,
//        debugShowCheckedModeBanner:false,
    );
  }
}

class MyObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route previousRoute) {
    super.didPush(route, previousRoute);
    print('----------push-----------');
    print(route.settings);
    print(previousRoute);
    print('----------end-----------');
  }

  @override
  void didPop(Route route, Route previousRoute) {
    // TODO: implement didPop
    super.didPop(route, previousRoute);
    print('----------pop-----------');
    print(route.settings);
    print(previousRoute);
    print('----------end-----------');
  }
}

//有状态
class HomePage extends StatefulWidget {
  final int a = 0;

  @override
  State<StatefulWidget> createState() {
    return HomeAppPage();
  }
}

class HomeAppPage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Text('12345'),
      ),
    );
  }
}

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.favorite),
        title: new Text('one page'),
        centerTitle: true,
        //这个用AppBar和TabBar都可以
        bottom: new AppBar(title: new Text('jimmy bottom'),),
      ),
    );
  }
}

