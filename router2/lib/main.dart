
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ProductList(
        products:List.generate(20, (i){
          return Product('商品${i}', '这是一个商品${i}');
        })
      )
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key,@required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text('${products[index].title},${products[index].describe}'),
              onTap: (){
                print(index);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return ProductDetail(
                      productd: '${products[index].title},${products[index].describe}',
                      productObj:products[index]
                    );
                  }
                ));
              },
            );
          },
        ),
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  String productd;
  Product productObj;
  ProductDetail({Key key,
    this.productd = "默认的商品详情内容",
    this.productObj
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text(
              productd,
              style: TextStyle(
                color: Colors.white
              ),
            ),
            color: Colors.blue,
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}


class Product {
  final String title;
  final String describe;
  Product(this.title,this.describe);
}