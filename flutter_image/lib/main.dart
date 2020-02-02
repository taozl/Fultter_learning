import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: "Image",
          home: Scaffold(
            body: Center(
//              child: Container(
//                //加载网络图片
////                child: new Image.network("http://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/aec379310a55b31905caba3b43a98226cffc1748.jpg"),
//                child: new Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563251679757&di=5d148316a23972ec8d20b946b9fe0d6b&imgtype=0&src=http%3A%2F%2Fimages6.fanpop.com%2Fimage%2Fphotos%2F41100000%2F-Toshiro-Hitsugaya-bleach-anime-41102719-500-281.gif",
//
////                      fit:BoxFit.contain,//保持原图
////                      fit:BoxFit.fill,//图片拉伸
////                      fit:BoxFit.fitWidth,//横向充满
////                      fit:BoxFit.fitHeight,//纵向充满
////                      fit:BoxFit.cover,//被裁切，但是变形
//                  color: Colors.greenAccent,
//                  colorBlendMode: BlendMode.darken, //滤镜混合模式
//                ),
//                width: 300.0,
//                height: 200.0,
//                color: Colors.lightBlue,
//              ),//网络图片
            child: Container(
              child:  new Image.asset("images/222.jpeg"),//加载本地图片 要配置pubspec.yaml文件
              width: 300.0,
              height: 200.0,
            ),
            ),
          ),
        );
  }
}

