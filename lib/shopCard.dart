

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:last_mile/mainPage.dart';
import 'package:last_mile/models/Decor.dart';
import 'package:last_mile/models/product.dart';
import 'package:last_mile/models/shops.dart';
import 'package:last_mile/product_page.dart';


class ShopCard extends StatelessWidget {

  final Shops shop;

  const ShopCard({Key key, this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Product product;
    Decor decor;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
            width: MediaQuery.of(context).size.width/2,
            padding: EdgeInsets.all(8.0,),
            child: InkWell(
              onTap: () =>  Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MainPage(0,0))),
              child: Card(
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: Container(
                        padding: EdgeInsets.all(10.0,),
                        height: MediaQuery.of(context).size.height/2,
                        width: MediaQuery.of(context).size.width/3,
                        decoration: BoxDecoration(

                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 100,
                              child: Center(
                                child: Image.asset(shop.image),
                              ),
                            ),


                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(top:4.0,),
                                child: Text(
                                  shop.name,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w300,color: Colors.black),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(top:4.0,),
                                child: Text(
                                  shop.deliverytime,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.black),
                                ),
                              ),
                            ),


                            Padding(
                              padding: EdgeInsets.only(top:4.0,),
                              child: RatingBar(
                                initialRating: shop.ratings,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: 15,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 1,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),


                          ],
                        )



                    )
                ),
              ),
            )
        )
    );
  }
}



