import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:last_mile/cartListing.dart';
import 'package:last_mile/fullCart.dart';
import 'package:last_mile/models/Cart.dart';
import 'package:last_mile/showCart.dart';

class CartProduct extends StatefulWidget {
  @override
  _CartProductPageState createState() => _CartProductPageState();

}
class _CartProductPageState extends State<CartProduct> {

  List<CartModel> searchResults;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchResults = cart;

  }
  @override
  Widget build(BuildContext context) {


    return   SizedBox(
      height: 260,
      width: MediaQuery.of(context).size.width/1.1,
      child: ListView.builder(
        shrinkWrap: false,
          scrollDirection: Axis.vertical,
          itemCount: cart.length,
          itemBuilder: (_, index) {
            return ShowCarts(
              cart: cart[index],


            );
          }
      ),
    );
  }
}


