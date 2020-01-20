import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    debugPrintGlobalKeyedWidgetLifecycle = false;
    // TODO: implement build
    return MaterialApp(
      title: "Text",
      home: Scaffold(
        body: Center(
          //iOS里面的label
//          child: Text("Hello world,非常喜欢前端技术，并且愿意为此付出一生，我希望可以出1000集免费课程",
//            textAlign: TextAlign.center,//对齐方式
//            maxLines: 10,//最大行数
//            overflow: TextOverflow.ellipsis,//末尾显示方式 lineModel ellipsis为。。。
//            //style为字体大小等属性
//            style: TextStyle(
//              fontSize: 25.0,
//              color: Color.fromARGB(255, 255, 125, 125),
//              decoration: TextDecoration.underline,//下划线
//              decorationStyle: TextDecorationStyle.solid,//下划线的样式
//            ),
//          ),

          child: Container(
            //Text的背景色、大小、对齐方式等等
            child: Text("Hello TzlHello TzlHello TzlHello TzlHello TzlHello TzlHello TzlHello Tzl",
              style: TextStyle(fontSize: 40.0),),
              alignment:  Alignment.topLeft,//对齐方式
              width: 500.0,
              height: 400.0,
//              color: Colors.lightBlue,//背景色 和 decoration不能同时存在
            /*
            * fromLTRB(left, top, right, bottom)
            * padding 内边距
            * margin 外边距
            * */
              padding:const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0), //内边距
              margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

            //渐变色、边框等
            decoration: new BoxDecoration(
              gradient: const LinearGradient(colors:[Colors.lightBlue,Colors.red,Colors.green,Colors.purple]),//渐变色
              border: Border.all(width:2.0, color: Colors.yellow),//边框宽度和颜色
            ),
          ),
        ),
      ),
    );
  }
}

