import 'package:flutter/material.dart';
void main()=> runApp(new Row(
  textDirection: TextDirection.ltr,
//  mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.center,
//  CrossAxisAlignment : CrossAxisAlignment.start
  children: <Widget>[
    new Expanded(
      child: new Text("123",textDirection: TextDirection.ltr,),
    ),
    new Expanded(
      child: new Text("456",textDirection: TextDirection.ltr,),
    ),
    new Expanded(
      child: new Text("789",textDirection: TextDirection.ltr,),
    ),

    new Text("wxq",textDirection: TextDirection.ltr,),
    new Text("wxq1",textDirection: TextDirection.ltr,),
    new Text("wxq2",textDirection: TextDirection.ltr,),
    new Text("wxq3",textDirection: TextDirection.ltr,)
  ],


));