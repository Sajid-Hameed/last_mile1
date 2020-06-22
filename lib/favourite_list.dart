import 'package:flutter/material.dart';
import 'package:last_mile/favouriteCard.dart';
import 'package:last_mile/favouritelisting.dart';
import 'productlisting.dart';
import 'models/favourite.dart';



class FavouriteList extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();

}
class _ProductListPageState extends State<FavouriteList> {

  List<Favourite> searchResults;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchResults = favourite;

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
          itemCount: favourite.length,
          itemBuilder: (_, index) {
            return FavouriteCard(
              ind: index,
              product: favourite[index],


            );
          }
      ),
    );
  }
}


