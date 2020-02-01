import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Column Widget Demo",
      home: Scaffold(
        appBar: new AppBar(
          title: Text ("垂直方向布局"),
        ),

        //center为中间对齐  灵活布局Expanded

        body: Center(child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,//左对其
//          crossAxisAlignment: CrossAxisAlignment.end,//右对齐
          crossAxisAlignment: CrossAxisAlignment.center,//中间对齐
          mainAxisAlignment: MainAxisAlignment.center,//竖直方向的对齐

          children: <Widget>[
            Text("I am flutter"),
            Expanded(child: Text("I am flutter2flutter2flutter2flutter2flutter2flutter2")) ,
            Text("I am flutter3"),

          ],
        )
        ),
      ),
    );
  }
}
