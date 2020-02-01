import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //声明变量
    var stack  = new  Stack(
        //两个的距离位置，范围是0~1
        alignment: const FractionalOffset(0.5, 0.8),
        children: <Widget>[
          //头像图片
          new CircleAvatar(
            radius: 100.0,//弧度
            backgroundColor: Colors.red,
            backgroundImage: new NetworkImage("http://blogimages.jspang.com/blogtouxiang1.jpg"),//不明白为什么图片加载不出来
          ),

          //文字
          new Container(
            decoration: new BoxDecoration(
              color: Colors.lightBlue,
            ),
            padding: EdgeInsets.all(5.0),
            child: new Text("这是我的名字"),
          )
        ],
    );

    return MaterialApp(
      title: "Stack Widget Demo",
      home: Scaffold(
        //导航栏
        appBar: new AppBar(
          title: Text('包含布局'),
        ),
        //在屏幕中间
        body:Center(
            child: stack,
        )
      ),
    );
  }
}
