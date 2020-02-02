import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title:"页面跳转返回数据" ,
    home: FistPage(),
  ));
}

//定义主界面
class FistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("找小姐姐要电话"),
      ),
      body: Center(
        child: RouteButton(),//自定义的按钮
      ),
    );
  }
}

//routeButton
class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //返回一个按钮
    return RaisedButton(
      onPressed: (){
        _navgateToXiaoJieJie(context);//点击事件
      },//点击事件
      child: Text("去找小姐姐"),//标题
    );
  }

  //异步方法
  _navgateToXiaoJieJie(BuildContext context,)async{
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>XiaoJieJie())
    );//接收到的值
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("$result")));//显示弹框，弹出传递的值
  }
}


//小姐姐类
class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是小姐姐"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //按钮1
            RaisedButton(
              child: Text("大长腿小姐姐"),
              onPressed: (){
                Navigator.pop(context,"大长腿小姐姐 ：110");
              },
            ),
            //按钮2
            RaisedButton(
              child: Text("小蛮腰小姐姐"),
              onPressed: (){
                Navigator.pop(context,"小蛮腰小姐姐 ：999");
              },
            ),
          ],
        ),
      ),
    );
  }
}
