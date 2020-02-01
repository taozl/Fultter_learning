import 'package:flutter/material.dart';


////这里不能用MyApp了，context会追溯到MyApp。导致无法跳转
//void main()=>runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context1) {
//    return MaterialApp(
//      title: "导航条转和返回",
//      home: Scaffold(
//        appBar: AppBar(title:Text("导航栏跳转和返回"),backgroundColor: Colors.red),
//        body: Center(
//          child: RaisedButton(
//              child: Text("点击跳转"),
//              onPressed:(){
//                  Navigator.push(
//                      context1,
//                      MaterialPageRoute(
//                        builder:(context)=> new SecondeScreen()
//                      )
//                  );
//                  },
//          ),
//        ),
//      ),
//    );
//  }
//}


//这里要修改widget_test.dart文件中的Myapp(),改为MaterialApp(),保持一致
void main(){
  runApp(MaterialApp(
    title: "导航条转",
    home: FistScreen(),
  ));
}


class FistScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("导航栏第一个界面"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: RaisedButton(
            child: Text("点击跳转下一个界面"),
            //点击事件
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(
                builder:(context)=> new SecondeScreen()
              ));
            },
        ),
      ),
    );
  }
}


class SecondeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个界面"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: RaisedButton(
            child: Text("返回"),
            onPressed:(){
              Navigator.pop(context);
            },
        ),
      ),
    );
  }
}




