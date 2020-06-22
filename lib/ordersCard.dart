import 'package:flutter/material.dart';
import 'package:last_mile/cartProducts.dart';
import 'package:last_mile/orderStatus.dart';

import 'models/Cart.dart';
import 'models/Orders.dart';


class OrdersCard extends StatelessWidget {

final Orders orders;

  const OrdersCard({Key key, this.orders}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Padding(
          padding: const EdgeInsets.only(left: 0.0),

          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0,top: 10.0),
                        child: Text(orders.orderno,style: TextStyle(fontSize: 20.0,color: Colors.grey),),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0,top: 20.0),
                        child: Text('View Details',style: TextStyle(fontSize: 15.0,color: Color.fromRGBO(204, 157, 118, 1)),),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:10.0,bottom:10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 20.0,top: 10.0),
                              child: Text('Placed On:',style: TextStyle(fontSize: 15.0,color: Colors.black),),
//                    Padding(
//                      padding: EdgeInsets.only(left: 10.0),
//                      child: Text(orders.placedOn,style: TextStyle(fontSize: 15.0,color: Colors.black),),
//                    ),

                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0,top: 10.0),
                              child: Text('Amount:',style: TextStyle(fontSize: 15.0,color: Colors.black),),
//                    Padding(
//                      padding: EdgeInsets.only(left: 10.0),
//                      child: Text(orders.placedOn,style: TextStyle(fontSize: 15.0,color: Colors.black),),
//                    ),

                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0,top: 10.0),
                              child: Text('Status:',style: TextStyle(fontSize: 15.0,color: Colors.black),),
//                    Padding(
//                      padding: EdgeInsets.only(left: 10.0),
//                      child: Text(orders.placedOn,style: TextStyle(fontSize: 15.0,color: Colors.black),),
//                    ),

                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10.0,left: 10.0,bottom: 10.0),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10.0,top: 10.0),
                              child: Text(orders.placedOn,style: TextStyle(fontSize: 15.0,color: Colors.black),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0,top: 10.0),
                              child: Text('\$${orders.amount ?? 0.0}',style: TextStyle(fontSize: 15.0,color: Colors.black),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0,top: 10.0),
                              child: Text(orders.status,style: TextStyle(fontSize: 15.0,color: Colors.black),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(endIndent: 20.0,indent: 20.0,)
                ],
              ),
            ),
          ),
    );
  }


}
