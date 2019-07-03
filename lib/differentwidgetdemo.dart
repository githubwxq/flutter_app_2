import 'package:flutter/material.dart';
import 'images.dart';
import 'src/single.dart';
import 'src/multi.dart';

void main() => runApp(new MyApp());

const List<String> singleLayoutWidgets = [
  "FittedBox",
  "AspectRatio",
  "Baseline",
  "FractionallySizedBox",
  "IntrinsicHeight",
  "IntrinsicWidth",
  "Offstage",
  "OverflowBox",
  "SizedBox",
  "SizedOverflowBox",
  "CustomSingleChildLayout",
];

const List<String> multiLayoutWidgets = [
  "Stack",
  "IndexedStack",
  "Flow",
  "Table",
  "Wrap",
  "ListBody",
  "ListView",
  "CustomMultiChildLayout",
];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home: new MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        '/ImagePage':(BuildContext context)=> new ImagePage(),

        //单子控件
        '/FittedBox': (BuildContext context) => new FittedBoxPage(),
        '/AspectRatio': (BuildContext context) => new AspectRatioPage(),
        '/Baseline': (BuildContext context) => new BaselinePage(),
        '/FractionallySizedBox': (BuildContext context) =>
        new FractionallySizedBoxPage(),
        '/IntrinsicHeight': (BuildContext context) =>
        new IntrinsicHeightPage(),
        '/IntrinsicWidth': (BuildContext context) =>
        new IntrinsicWidthPage(),
        '/Offstage': (BuildContext context) => new OffstagePage(),
        '/OverflowBox': (BuildContext context) => new OverflowBoxPage(),
        '/SizedBox': (BuildContext context) => new SizedBoxPage(),
        '/SizedOverflowBox': (BuildContext context) =>
        new SizedOverflowBoxPage(),
        '/CustomSingleChildLayout': (BuildContext context) =>
        new CustomSingleChildLayoutPage(),
        //多子控件
        '/Stack': (BuildContext context) => new StackPage(),
        '/IndexedStack': (BuildContext context) => new IndexedStackPage(),
        '/Flow': (BuildContext context) => new FlowPage(),
        '/Table': (BuildContext context) => new TablePage(),
        '/Wrap': (BuildContext context) => new WrapPage(),
        '/ListBody': (BuildContext context) => new ListBodyPage(),
        '/ListView': (BuildContext context) => new ListViewPage(),
        '/CustomMultiChildLayout': (BuildContext context) =>
        new CustomMultiChildLayoutPage(),
      },
//      initialRoute: '/ImagePage',
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    List<String> layoutWidgets = [];
    layoutWidgets.add('ImagePage');
    layoutWidgets.addAll(singleLayoutWidgets);
    layoutWidgets.addAll(multiLayoutWidgets);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext buildContext, int index) {
          return new ListTile(
            title: new LayoutListItem(
              index: index,
              title: layoutWidgets[index],
              onPress: () {
                _myToPage(context, layoutWidgets[index]);
              },
            ),
          );
        },
        itemCount: (singleLayoutWidgets.length + multiLayoutWidgets.length),
      ),
    );
  }
}

void _myToPage(BuildContext context, String page) {
  print("Page:$page");
  Navigator.of(context).pushNamed('/$page');
}

class LayoutListItem extends StatelessWidget {
  LayoutListItem({this.index, this.title, this.onPress});

  final int index;
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onPress,
      child: new Center(
        child: new Text(
          "$title",
          style: new TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
    );
  }
}
