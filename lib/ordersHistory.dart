import 'package:flutter/material.dart';

import 'orderList.dart';


class OrderHistory extends StatefulWidget {

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<OrderHistory> {

  @override
  Widget build(BuildContext context) {
    Widget appBar = Container(
      padding: EdgeInsets.only(top:10.0),
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_back)),

          Padding(
            padding: EdgeInsets.only(left: 60.0),
            child: Text('ORDER HISTORY',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
          )

        ],
      ),
    );
    return Scaffold(

      body: Container(

        color: Colors.grey[200],


        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              appBar,
              Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child:Container(
                        padding: EdgeInsets.all(0.0,),
                        height: MediaQuery.of(context).size.height/1.15,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24), topLeft: Radius.circular(24)),

                        ),
                        child: OrderList(),
                      )
                  ),
                ],
              ),





            ],
          ),
        ),
      ),
    );
  }
}
