import 'package:flutter/material.dart';
import 'NoticeList.dart';
import 'package:flutter/widgets.dart';
import 'notice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MixNews',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NoticeList(),
      
    );
  }
}


