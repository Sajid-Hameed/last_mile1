import 'package:flutter/material.dart';
import 'package:last_mile/models/product.dart';
import 'package:last_mile/productCard.dart';

import 'productlisting.dart';



class ProductList extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();

}
class _ProductListPageState extends State<ProductList> {
  
  List<Product> searchResults;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchResults = products;

  }
  @override
  Widget build(BuildContext context) {
    double cardHeight = MediaQuery.of(context).size.height/3.5;
    double cardWidth = MediaQuery.of(context).size.width/2.2;
    if(products==null)
      products = [];
    return   SizedBox(
      height: MediaQuery.of(context).size.height/3.5,
      width: MediaQuery.of(context).size.width/1.5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (_, index) {
            return ProductCard(
              ind: index,
              product: products[index],


            );
          }
      ),
    );
  }
}


