import 'package:flutter/material.dart';


//商品
class Product{
  final String title;//商品标题
  final String desStr;//商品描述
  Product(this.title,this.desStr);//构造成一个类
}

void main(){
  runApp(MaterialApp(
    title: "导航的数据传递和接受",
    home: ProductList(
      products:List.generate(20, (i)=>Product("我的商品 $i","这是一个商品详情，编号为$i"))
    ),//这个是个组件
  ));
}


class ProductList extends StatelessWidget {
  final List<Product> products;//接收到的商品数组
  ProductList({
    Key key, @required this.products //必须的
}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: ListView.builder(
        itemCount: products.length,//个数
        itemBuilder: (context,index){
          return ListTile(
            title: Text(products[index].title),//显示product中的title字段
            onTap: (){
              //点击事件
              Navigator.push(
                  context,//上下文
                  MaterialPageRoute(
                    builder: (context)=>ProductDetail(product:products[index])//传递商品信息的模型
              ));
            },
          );
        },
      ),
    );
  }
}


//详情页面
class ProductDetail extends StatelessWidget {
  //接受参数
  final Product product;
  ProductDetail({Key key,@required this.product}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情: ${product.title}"),
      ),
      body: Center(
        child: Text("${product.desStr}"),//显示传递过来的值
      ),
    );
  }
}



