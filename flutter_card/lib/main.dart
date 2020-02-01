import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //卡片式布局
    var card = new Card(
    child: Column(
      children: <Widget>[
        //类似于iOS中的TableViewCell
        //瓦片形式
        ListTile(
          title: Text("江苏省南京市江宁区",style: TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Text("tzl手机号:110"),
          leading: new Icon(Icons.account_box,color: Colors.lightBlue),
        ),
        //分割线
        new Divider(),

        //瓦片形式
        ListTile(
          title: Text("浙江省杭州市西湖区",style: TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Text("tzl手机号:120"),
          leading: new Icon(Icons.account_box,color: Colors.lightBlue),
        ),
        //分割线
        new Divider(),
        //瓦片形式
        ListTile(
          title: Text("安徽省芜湖市弋江区",style: TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Text("tzl手机号:130"),
          leading: new Icon(Icons.account_box,color: Colors.lightBlue),
        )
      ],
    ),
    );

    return MaterialApp(
        title: "CardWidget Demo",
        home: Scaffold(
          appBar: new AppBar(
            title: new Text("卡片式布局"),
          ),
          body: card
        ),
    );
  }
}
