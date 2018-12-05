import 'package:flutter/material.dart';

import 'package:ebay_copy/products.dart';
import './product_control.dart';

class ProductsManager extends StatefulWidget {
  final String startingProduct;
  
  ProductsManager({this.startingProduct});


  @override
  State<StatefulWidget> createState() {
      return _ProductsManagerState();
    }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {
    if(widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(8.0),
          child: ProductControl(_addProduct), 
        ),
        Expanded(
          child: Products(products:_products))
      ],
    );
  }
}