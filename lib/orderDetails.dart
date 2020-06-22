import 'package:flutter/material.dart';
import 'package:last_mile/cartProducts.dart';
import 'package:last_mile/orderStatus.dart';

import 'models/Cart.dart';


class OrderDetails extends StatelessWidget {


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
            child: Text('ORDER DETAILS',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
          )

        ],
      ),
    );

    Widget topHeader = Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Padding(
          padding: EdgeInsets.only(top: 30.0,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'SHIPPING TO',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.0,color: Colors.grey),
                  ),
                  Spacer(),
                  Text(
                    'Change',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.0,color: Colors.green),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 200,
                  child: Text('R88 Block 16/ Fedral B Area Karachi / Pakistan',),
                ),
              )
            ],
          )

        )
    );


    Widget lowHeader = Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Padding(
            padding: EdgeInsets.only(top: 30.0,bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'DETAILS',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.0,color: Colors.grey),
                    ),
                    Spacer(),
                    Text(
                      'Change',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.0,color: Colors.green),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Container(
                    width: 200,
                    child: Text('Muhammad Ahsan ahsan.test@gmail.com 0300-1234567',),
                  ),
                )
              ],
            )

        )
    );



    Widget carts =Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Padding(
          padding: EdgeInsets.only(top: 10.0,left: 15.0),
          child: Text('PAYMENT METHOD',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
        ),

        Row(
          children: <Widget>[
            new Radio(
              value: 0,

            ),
            new Text('Paypal'),

          ],
        ),
        Row(
          children: <Widget>[
            new Radio(
              value: 0,

            ),
            new Text('Master Card'),

          ],
        ),
        Row(
          children: <Widget>[
            new Radio(
              value: 0,

            ),
            new Text('Cash on Delivery'),

          ],
        ),


      ],
    );
Widget low = Container(
    height: MediaQuery.of(context).size.height/3.63,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(24), topLeft: Radius.circular(24)),

    ),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Padding(
            padding: EdgeInsets.only(left: 20.0,top: 20,right: 20.0),
            child: Row(
              children: <Widget>[
                Text('SUBTOTAL',style: TextStyle(color: Colors.white),),
                Spacer(),
                Text('\$1500',style: TextStyle(color: Colors.white),),
              ],
            )
        ),
        Padding(
            padding: EdgeInsets.only(left: 20.0,top: 20,right: 20.0),
            child: Row(
              children: <Widget>[
                Text('SHIPPING',style: TextStyle(color: Colors.white),),
                Spacer(),
                Text('Please select',style: TextStyle(color: Colors.white),),
              ],
            )
        ),
        Padding(
            padding: EdgeInsets.only(left: 20.0,top: 20,right: 20.0),
            child: Row(
              children: <Widget>[
                Text('TOTAL TO PAY',style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                Spacer(),
                Text('\$1580',style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
              ],
            )
        ),
        Padding(
            padding: EdgeInsets.only(top:20.0,left: 60.0),
            child: InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => OrderStatus())),
              child: Container(

                width: MediaQuery.of(context).size.width /1.5,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(60, 111, 102, 1),
                  border: Border.all(color: Color.fromRGBO(60, 111, 102, 1),),
                  borderRadius: BorderRadius.circular(25.0),
                ),

                child: Center(
                    child: new Text("PLACE ORDER",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0))),



              ),
            )
        ),
      ],
    )
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
                    height: MediaQuery.of(context).size.height/1.16,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.2, 0.1],
                        colors: [
                          Colors.black,
                          Colors.white
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24), topLeft: Radius.circular(24)),

                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        topHeader,

                        Divider(indent: 20,
                          endIndent: 20,color: Colors.black,),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: carts,
                        ),

                        Divider(indent: 20,
                          endIndent: 20,color: Colors.black,),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: lowHeader,
                        ),
                        low

                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
