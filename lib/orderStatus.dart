import 'package:flutter/material.dart';
import 'package:last_mile/cartProducts.dart';

import 'colors.dart';
import 'models/Cart.dart';


class OrderStatus extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    int pageIndex = 5;


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
            child: Text('ORDER DETAILS',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
          )

        ],
      ),
    );


    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.2, 0.1],
            colors: [
              Colors.black,
              Colors.grey[100],
            ],
          ),

        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 0.0),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                appBar,
                Container(
                  padding: EdgeInsets.all(0.0,),
                  height: MediaQuery.of(context).size.height/1.096,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24), topLeft: Radius.circular(24)),

                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0,left: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[



                       Row(

                         mainAxisSize: MainAxisSize.min,
                         children: <Widget>[
                           Container(
                             margin: EdgeInsets.all(8.0),
                             height: 30,
                             width: 30,
                             child: Icon(Icons.check,color: Colors.white,),
                             decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border:pageIndex >= 0 ?  Border.all(color: darkgreen, width: 2):Border.all(color:Colors.grey , width: 2),
                                 color: pageIndex >= 0  ? darkgreen : Colors.white),
                           ),



                                Container(
                                  margin: EdgeInsets.only(left:8.0),
                                  width: MediaQuery.of(context).size.width/1.5,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text('Order Placed',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                                          Spacer(),

                                          Text('Edit',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.w400,color: pageIndex ==1  ?darkgreen : Colors.black ),),

                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10.0,right: 10.0),
                                        child: Text('Your order #212423 was placed on 23th November 2019.'),
                                      )
                                    ],
                                  ),
                                ),

                         ],
                       ),
                        Expanded(
                          child: new Container(
                            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: VerticalDivider(
                              width: 20,
                              thickness: 2,
                              color: Colors.grey,),),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(8.0),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.check,color: Colors.white,),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:pageIndex > 1  ?  Border.all(color: darkgreen, width: 2):Border.all(color:Colors.grey , width: 2),
                                  color: pageIndex > 1  ? darkgreen : Colors.white),
                            ),

                            Padding( padding: EdgeInsets.only(top:0.0),
                              child: Container(
                                margin: EdgeInsets.only(left:8.0),
                                width: MediaQuery.of(context).size.width/1.5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text('Processing',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                                        Spacer(),

                                        Text('Cancel',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.w400,color: pageIndex ==2?darkgreen : Colors.black ),),

                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.0,right: 10.0),
                                      child: Text('Your order still needs to be processed by our store before sending it to you.'),
                                    )
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                        Expanded(
                          child: new Container(
                            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: VerticalDivider(
                              width: 20,
                              thickness: 2,
                              color: Colors.grey,),),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(8.0),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.check,color: Colors.white,),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:pageIndex > 2  ?  Border.all(color: darkgreen, width: 2):Border.all(color:Colors.grey , width: 2),
                                  color: pageIndex > 2 ? darkgreen : Colors.white),
                            ),

                            Container(
                              margin: EdgeInsets.only(left:8.0),
                              width: MediaQuery.of(context).size.width/1.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text('Picked up',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                                      Spacer(),

                                      Text('Cancel',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.w400,color: pageIndex ==3?darkgreen : Colors.black ),),

                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.0,right: 10.0),
                                    child: Text('Your order has been picked up by one of our couriers and its on your way.'),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: new Container(
                            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: VerticalDivider(
                              width: 20,
                              thickness: 2,
                              color: Colors.grey,),),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(8.0),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.check,color: Colors.white,),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:pageIndex > 3  ?  Border.all(color: darkgreen, width: 2):Border.all(color:Colors.grey , width: 2),
                                  color: pageIndex > 3  ? darkgreen : Colors.white),
                            ),

                            Container(
                              margin: EdgeInsets.only(left:8.0),
                              width: MediaQuery.of(context).size.width/1.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text('Delivering',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                                      Spacer(),

                                      Text('',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.w400,color: pageIndex >3?darkgreen : Colors.black ),),

                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.0,right: 10.0),
                                    child: Text('The package is on your way. Make sure to be at the location to meet the courier.'),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: new Container(
                            padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: VerticalDivider(
                              width: 20,
                              thickness: 2,
                              color: Colors.grey,),),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(8.0),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.check,color: Colors.white,),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:pageIndex >4 ?  Border.all(color: darkgreen, width: 2):Border.all(color:Colors.grey , width: 2),
                                  color: pageIndex >4 ? darkgreen : Colors.white),
                            ),

                            Container(
                              margin: EdgeInsets.only(left:8.0),
                              width: MediaQuery.of(context).size.width/1.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text('Delivered',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                                      Spacer(),

                                      Text('Tip Deliver',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.w400,color: pageIndex == 5?darkgreen : Colors.black ),),

                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.0,right: 10.0),
                                    child: Text('It seems like the package has arrived to you. Hope you are happy with it!'),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top:30.0,left: 40.0,bottom: 20.0),
                            child: InkWell(

                              child: Container(

                                width: MediaQuery.of(context).size.width /1.5,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(204, 157, 118, 1),
                                  border: Border.all(color: Color.fromRGBO(204, 157, 118, 1),),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),

                                child: Center(
                                    child: new Text("CONTACT US",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15.0))),



                              ),
                            )
                        ),
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


}
