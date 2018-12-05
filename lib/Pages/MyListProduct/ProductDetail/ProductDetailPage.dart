import 'package:flutter/material.dart';
import 'package:easymktf/Class/Product.dart';
import 'package:easymktf/Class/ShoppingList.dart';
import 'package:easymktf/Pages/MyListProduct/ProductDetail/ProductDetailBody.dart';
import 'package:easymktf/Pages/MyListProduct/ProductDetail/ProductDetailAppBar.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  ProductDetailPage({this.product});


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new DetailAppBar(),
          new ProductDetailBody(product),
//          _getImage()
        ],
      ),
    );
  }

  Widget _getImage(){
    return new Container(
        child: Hero(
          tag: "product-hero-${product.id}",
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(product.img),
            ),
          ),
        ),
    );
  }
}