import 'package:flutter/material.dart';

import 'package:bwflutterpro/tabbar/tabbar.dart';

import 'package:bwflutterpro/userinfo/userinfo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '我的app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new tabbar(),
        routes: <String, WidgetBuilder>{
          '/userinfo': (BuildContext context) => new userinfo()
        });
  }
}
