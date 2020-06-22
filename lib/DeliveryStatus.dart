import 'package:flutter/material.dart';
import 'package:last_mile/favourite_list.dart';
import 'package:last_mile/mainPage.dart';
import 'package:last_mile/models/Cart.dart';
import 'package:last_mile/purchasedList.dart';

import 'SearchPage.dart';
import 'ServicesProvided.dart';
import 'Settings.dart';
import 'cart.dart';
import 'cartListing.dart';
import 'colors.dart';
import 'fullCart.dart';

class DeliveryStatus extends StatefulWidget {

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<DeliveryStatus> {
  String timelines = 'Delivery Status';
  String selectedTimeline = 'All of your delivery history and subscriptions are maintained here';
  Widget appBar (){
    return  Container(
      padding: EdgeInsets.only(top:10.0),
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.search)),
          Text('Delivery Status',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
          IconButton(
              icon: Icon(Icons.clear)),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              appBar(),

              Padding(
                padding: EdgeInsets.only(top:20.0),
                child: Text(
                  timelines,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: darkGrey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20.0),
                child: Text(
                  selectedTimeline,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: darkGrey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20.0),
               child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text('Last Purchased',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text('See all',style: TextStyle(fontSize: 10.0,),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: PurchasedList(),

              ),
              Padding(
                padding: EdgeInsets.only(top:30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text('On their way',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Text('See all',style: TextStyle(fontSize: 10.0,),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text('1',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ),
                  ],
                )
              ),
              Padding(
                  padding: EdgeInsets.only(top:30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text('Scheduled',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Text('See all',style: TextStyle(fontSize: 10.0,),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('4',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(top:30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text('Delivery History',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Text('See all',style: TextStyle(fontSize: 10.0,),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('4',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  )
              ),

            ],
          ),

        ),
      ),
    );
  }
}
