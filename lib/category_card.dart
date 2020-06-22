
import 'package:flutter/material.dart';

import 'colors.dart';
import 'models/category.dart';

class CategoryCard extends StatelessWidget {

  final Category category;


  const CategoryCard({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(

        child: Stack(
          children: <Widget>[

            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.white,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        stops: [0.1,0.4, 2.1],
                        colors: [
                          Colors.black87,
                          Colors.brown[700],
                          Colors.orange[700],
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(

                            height: MediaQuery.of(context).size.height/4.2,
                            width: 330,
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  child: Padding(
                                    padding: EdgeInsets.only(top:8.0,left: 18.0),
                                    child: Text(
                                      category.name,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top:18.0,left: 18.0),
                                  child: Text(
                                    category.weight,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 15.0,color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top:18.0,left: 18.0),
                                  child: Text(
                                    category.price,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                        ),

//
//                  Container(
//                    height: MediaQuery.of(context).size.height*5,
//                    width: 130,
//                    child: Center(
//                      child: Image.asset(category.image,fit: BoxFit.fill,),
//                    ),
//                  )
                      ],
                    ),
                  )
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.only(left:180.0),
                child: Hero(
                  tag: category.image,
                  child: Image.asset(
                    category.image ?? '',

                    width: 150,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )
            ),
          ],

        ),
      )
    );
  }
}








/*class CategoryCard extends StatelessWidget {

  final Category category;
  final double height;
  final double width;

  const CategoryCard({Key key, this.category,this.height,this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
//      onTap: () => Navigator.of(context)
//          .push(MaterialPageRoute(builder: (_) => ProductPage(
//          product: product
//
//      ))),
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 30),
            height: height,
            width: width*2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  stops: [0.1,0.5, 1.2],
                  colors: [
                    Colors.black,
                    Colors.brown[700],
                    Colors.orange[500],
                  ],
                ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                  color: Colors.white,
                ),
                Column(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            category.name ?? '',
                            style:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        )),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 12.0),
                        padding: const EdgeInsets.fromLTRB(8.0, 4.0, 12.0, 4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          color: Color.fromRGBO(224, 69, 10, 1),
                        ),
                        child: Text(
                          '\$${category.price ?? 0.0}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 10.0,
            child: Hero(
              tag: category.image,
              child: Image.asset(
                category.image ?? '',
                height: height/1.7,
                width: width/1.4,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/






