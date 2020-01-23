import 'package:flutter/material.dart';

void main() => runApp(MyApp(
//  items:List<String>(1000)//list的声明方式
    items:new List<String>.generate(1000, (i) => "Item $i") //数据源数组、传参数

));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key,@required this.items}):super(key:key); //动态传递参数
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: new AppBar(title: new Text("ListView Widget")),
      body:new ListView.builder(
          itemCount: items.length,//item个数
          itemBuilder: (context,index){
            return new ListTile(
              title: new Text("${items[index]}"),
            );
          }),
      ),
    );
  }
}


//动态列表
class MyDyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}





//ListView单独拿出来 组件化
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      //listView横向还是竖向
      scrollDirection: Axis.horizontal,//横向
//            scrollDirection: Axis.vertical//竖向,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.yellow,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepPurple,
        )
      ],
    );
  }
}

