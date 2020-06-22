import 'package:flutter/material.dart';
import 'package:last_mile/favouriteCard.dart';
import 'package:last_mile/favouritelisting.dart';
import 'package:last_mile/models/Purchased.dart';
import 'package:last_mile/purchasedCard.dart';
import 'package:last_mile/purchasedListing.dart';
import 'productlisting.dart';
import 'models/favourite.dart';



class PurchasedList extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();

}
class _ProductListPageState extends State<PurchasedList> {

  List<Purchased> searchResults;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchResults = purchase;

  }
  @override
  Widget build(BuildContext context) {
    double cardHeight = MediaQuery.of(context).size.height/3.5;
    double cardWidth = MediaQuery.of(context).size.width/2.2;
    if(favourite==null)
      favourite = [];
    return   SizedBox(
      height: MediaQuery.of(context).size.height/3.5,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: purchase.length,
          itemBuilder: (_, index) {
            return PurchasedCard(
              ind: index,
              product: purchase[index],


            );
          }
      ),
    );
  }
}


