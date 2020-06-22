import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:last_mile/models/product.dart';
import 'package:last_mile/productCard.dart';
import 'package:last_mile/shopCard.dart';
import 'package:last_mile/shopListing.dart';

import 'colors.dart';
import 'models/shops.dart';





class ShopList extends StatefulWidget {
  @override
  _ShopListPageState createState() => _ShopListPageState();

}
class _ShopListPageState extends State<ShopList> {

  List<Shops> searchResults;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchResults = shops;

  }
  @override
  Widget build(BuildContext context) {
    double cardHeight = MediaQuery.of(context).size.height/3.5;
    double cardWidth = MediaQuery.of(context).size.width/2.2;
    if(shops==null)
      shops = [];

    return   SizedBox(
      height: MediaQuery.of(context).size.height/2,
      width: MediaQuery.of(context).size.width/1.1,
      child: GridView.builder(
          gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,childAspectRatio: 0.9,),
          scrollDirection: Axis.vertical,
          itemCount: shops.length,
          itemBuilder: (_, index) {
            return ShopCard(
              shop: shops[index],


            );
          }
      ),
    );
  }
}


