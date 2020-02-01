import 'package:flutter/material.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "gridView类似iOS的CollectionView",
      home: Scaffold(
        appBar: new AppBar(title: new  Text("GridView类似iOS的CollectionView")),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,//每行有多少个item
              mainAxisSpacing: 2.0 ,//纵轴的间距
              crossAxisSpacing:2.0 ,//每行的间距
              childAspectRatio:1.0//缩放比例 宽高比值
          ),
          children: <Widget>[
//            const Text("第一个"),
            new Image.network('https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg',color: Colors.lightBlue),
            new Image.network("http://img5.mtime.cn/mg/2020/01/22/213822.26704646_285X160X4.jpg"),
            new Image.network("http://img5.mtime.cn/mg/2020/01/23/090844.79889153_285X160X4.jpg",fit: BoxFit.cover),
            new Image.network("https://dss0.baidu.com/73F1bjeh1BF3odCf/it/u=3863278431,2383826360&fm=85&s=88A0CD121A938F80243CA8D0030080E3",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2020/01/23/102404.92199177_285X160X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2020/01/23/090844.79889153_285X160X4.jpg",fit: BoxFit.cover),
          ],
        )
      ),
    );
  }
}
