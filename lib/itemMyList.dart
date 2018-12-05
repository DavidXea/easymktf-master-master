import 'package:flutter/material.dart';
import 'package:easymktf/Class/Product.dart';

class ItemMyList extends StatelessWidget{

  var _img;
  var _name;
  var _price;

//  final Product product;

  ItemMyList(this._img,this._name,this._price);

  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    this._context = context;
    return new Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0,bottom: 10.0,top: 0.0),
      child: new Material(
        borderRadius: new BorderRadius.circular(6.0),
        elevation: 2.0,
        child: _getListTile(),
      ),
    );
  }


  Widget _getListTile(){
    // Foi adicionado dentro de Container para adicionar altura fixa.
    return new Container(
      height: 72.0,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new FadeInImage.assetNetwork(placeholder: '', image: _img,fit: BoxFit.cover,width: 95.0,height: 95.0,),
          _getColumText(_name,_price),
        ],
      ),
    );

  }
  Widget _getColumText(tittle,price){
    return new Expanded(
        child: new Container(
          margin: new EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
              _getNameWidget(_name),
              _getPriceWidget(_price),
            ],
          ),
        )
    );
  }

  Widget _getNameWidget(String curencyName){
    return new Text(
      curencyName,
      maxLines: 1,
      style: new TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _getPriceWidget(String price){
    return new Text(price,
      style: new TextStyle(color: Colors.grey,fontSize: 10.0),);
  }
}