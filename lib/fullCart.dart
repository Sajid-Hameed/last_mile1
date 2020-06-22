import 'package:flutter/material.dart';
import 'package:last_mile/cartProducts.dart';
import 'package:last_mile/orderDetails.dart';

import 'models/Cart.dart';


class FullCart extends StatelessWidget {
  final CartModel cart;

  const FullCart({Key key, this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24),bottomRight: Radius.circular(24),bottomLeft: Radius.circular(24))),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 20),
                      child: Text('Sign in',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 10),
                      child: InkWell(
                        onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => OrderDetails())),
                        child: Container(

                          width: MediaQuery.of(context).size.width /1.5,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(204, 157, 118, 1),
                            border: Border.all(color: Color.fromRGBO(204, 157, 118, 1),),
                            borderRadius: BorderRadius.circular(25.0),
                          ),

                          child: Center(
                              child: new Text("CONTINUE AS GUEST",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.0))),



                        ),
                      )
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 20),
                      child: Text('Already have an account?',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.0,color: Colors.grey),),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 10),
                      child: Container(

                        width: MediaQuery.of(context).size.width /1.5,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(60, 111, 102, 1),
                          border: Border.all(color: Color.fromRGBO(60, 111, 102, 1),),
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                        child: Center(
                            child: new Text("Login",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15.0))),



                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 10),
                      child: Container(

                        width: MediaQuery.of(context).size.width /1.5,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(60, 111, 102, 1),
                          border: Border.all(color: Color.fromRGBO(60, 111, 102, 1),),
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                        child: Center(
                            child: new Text("Sign up",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15.0))),



                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      );
    }
    Widget one = CartProduct();
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
          padding: EdgeInsets.only(top: 30.0),
          child: Text(
                'Order Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),
              ),

        )
    );
    Widget carts =Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Padding(
              padding: EdgeInsets.only(top: 10.0,left: 15.0),
              child: Text('SHIPPING METHOD',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
            ),

                Row(
                  children: <Widget>[
                    new Radio(
                      value: 0,

                    ),
                    new Text('Standard Shipping (16 days)'),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: new Text('FREE'),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Radio(
                      value: 0,

                    ),
                    new Text('Express (8 days)'),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: new Text('\$40'),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Radio(
                      value: 0,

                    ),
                    new Text('Premium (1 day)'),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: new Text('\$80'),
                    )
                  ],
                ),


          ],
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

          child: Padding(
            padding: const EdgeInsets.only(left: 0.0),

            child: Stack(

              children: <Widget>[




                     Padding(
                      padding: EdgeInsets.only(top: 90.0),
                       child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(0.0),
                        height: MediaQuery.of(context).size.height/1.08,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            stops: [0.2, 0.1],
                            colors: [
                              Colors.black,
                              Colors.white,
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


                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: CartProduct(),

                            ),
                            Divider(indent: 20,
                              endIndent: 20,color: Colors.black,),
                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: carts,
                            ),

                          ],
                        ),




                      ),
                    ),
                  ),

                Positioned(
                 bottom: 10.0,
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height/4,
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
                                    Text('(Premium) - \$80',style: TextStyle(color: Colors.white),),
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
                                  onTap: () => _showDialog(),
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



                    ),
                  ),
                ),

                appBar,








              ],
            ),

          ),


      ),
    );
  }


}
