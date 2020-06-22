import 'package:flutter/material.dart';
import 'package:last_mile/OrderListing.dart';
import 'package:last_mile/models/Orders.dart';
import 'package:last_mile/ordersCard.dart';
import 'package:last_mile/reviewListing.dart';
import 'package:last_mile/reviewsCard.dart';

import 'models/Reviews.dart';


class ReviewList extends StatefulWidget {
  @override
  _ReviewListPageState createState() => _ReviewListPageState();

}
class _ReviewListPageState extends State<ReviewList> {

  List<Reviews> searchResults;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchResults = reviews;

  }
  @override
  Widget build(BuildContext context) {


    return SizedBox(

      child: ListView.builder(
        shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: reviews.length,
          itemBuilder: (_, index) {
            return ReviewsCard(
              reviews: reviews[index],


            );
          }
      ),
    );
  }
}


