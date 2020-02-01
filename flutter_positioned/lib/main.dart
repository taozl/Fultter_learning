import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //定义一个竖直组合布局的变量
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.5),
      children: <Widget>[
        //头像
        new CircleAvatar(
          backgroundImage: new NetworkImage("http://blogimages.jspang.com/blogtouxiang1.jpg"),
          radius: 100.0,
        ),

        new Positioned(
          top: 50.0,
          left: 50.0,
          child: new Text("这是一个控件"),
        ),

        new Positioned(
            child:new Text("TzlCoder"),
            right: 75.0,
            bottom: 10.0,
        )
      ],
    );



    return MaterialApp(
        title: "Positioned Widget Demo",
        home: Scaffold(
          appBar: new AppBar(
            title: Text("多控件组合布局"),
          ),
          body:stack,
        ),
    );
  }
}
