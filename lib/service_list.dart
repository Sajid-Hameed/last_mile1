import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:last_mile/models/Services.dart';
import 'package:last_mile/models/product.dart';
import 'package:last_mile/productCard.dart';
import 'package:last_mile/serviceCard.dart';
import 'package:last_mile/serviceListing.dart';
import 'package:last_mile/shopCard.dart';
import 'package:last_mile/shopListing.dart';

import 'colors.dart';
import 'models/shops.dart';





class ServiceList extends StatefulWidget {
  @override
  _ShopListPageState createState() => _ShopListPageState();

}
class _ShopListPageState extends State<ServiceList> {

  List<Services> searchResults;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchResults = service;

  }
  @override
  Widget build(BuildContext context) {

    if(service==null)
      service = [];

    return   SizedBox(
      height: MediaQuery.of(context).size.height/1.5,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
          gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,childAspectRatio: 0.84,),
          scrollDirection: Axis.vertical,
          itemCount: service.length,
          itemBuilder: (_, index) {
            return ServiceCard(
              service: service[index],


            );
          }
      ),
    );
  }
}


