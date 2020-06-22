

import 'package:cupertino_range_slider/cupertino_range_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

import 'package:rubber/rubber.dart';

import 'colors.dart';
import 'models/product.dart';

class AdvanceFilters extends StatefulWidget {
  @override
  _AdvanceFiltersState createState() => _AdvanceFiltersState();
}

class _AdvanceFiltersState extends State<AdvanceFilters>  with SingleTickerProviderStateMixin {
  String selectedPeriod;
  String selectedCategory;
  String selectedPrice;


  List<String> timeFilter = [
    'Clothes',
    'Collections',
    'Mens Wear',
    'Limited',
    'Expensive',
    'Classical',
  ];

  List<String> categoryFilter = [
    'Price',
    'Popularity',
    'Trending',
    'Vase',
    'Top Selling',
    'Rating',
    'Archeological',
  ];

  List<String> priceFilter = [
    '\$50-200',
    '\$200-400',
    '\$400-800',
    '\$800-1000',
  ];
  Widget topheader = Container(
    child: Padding(
        padding: EdgeInsets.only(left: 16.0),
        child:
              Text(
                'Select categories',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: darkGrey),
              ),


      ),

  );
  Widget mid = Container(
    child: Padding(
      padding: EdgeInsets.only(left: 16.0),
      child:
      Text(
        'Sort watches by',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: darkGrey),
      ),


    ),

  );
  Widget down = Container(
    child: Padding(
      padding: EdgeInsets.only(left: 16.0),
      child:
      Text(
        'Select a price range',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: darkGrey),
      ),


    ),

  );
  List<Product> searchResults = [];

  TextEditingController searchController = TextEditingController();

  RubberAnimationController _controller;

  @override
  void initState() {
    _controller = RubberAnimationController(
        vsync: this,
        halfBoundValue: AnimationControllerValue(percentage: 0.4),
        upperBoundValue: AnimationControllerValue(percentage: 0.4),
        lowerBoundValue: AnimationControllerValue(pixel: 50),
        duration: Duration(milliseconds: 200));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  Widget _getUpperLayer() {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                offset: Offset(0, -3),
                blurRadius: 10)
          ],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(24), topLeft: Radius.circular(24)),
        ),

        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom:10.0),
              child: Container(

                width: MediaQuery.of(context).size.width /1.5,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(60, 111, 102, 1),

                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                    child: new Text("APPLY",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0))),


              ),
            ),
            Padding(
                padding: EdgeInsets.only(top:10.0,bottom: 20.0),
                child: InkWell(
                  onTap: () =>  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => AdvanceFilters())),
                  child: Container(

                    width: MediaQuery.of(context).size.width /1.5,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(60, 111, 102, 0.5),

                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Center(
                        child: new Text("CREATE FILTERS",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 15.0))),


                  ),
                )
            )
          ],
        )

    );
  }
  double _lowerValue = 20.0;
  double _upperValue = 80.0;
  @override
  Widget build(BuildContext context) {
    Widget appBar = Container(

      padding: EdgeInsets.only(top:10.0),
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(''),

          Center(child: Text('SEARCH FILTERS',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),),


          IconButton(

              icon: Icon(Icons.clear))

        ],
      ),
    );
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              appBar,
              Padding(
                padding: EdgeInsets.only(top: 05.0),
                child: topheader,
              ),
              Container(
                height: 120,
                child: GridView.builder(

                  gridDelegate:
                  new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,childAspectRatio: 0.50,),
                  itemBuilder: (_, index) => Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.0,
                        ),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedPeriod = timeFilter[index];
                              });
                            },
                            child: Container(

                                padding: EdgeInsets.symmetric(
                                    vertical: 14.0, horizontal: 10.0),
                                decoration: selectedPeriod == timeFilter[index]
                                    ? BoxDecoration(
                                    color: Color.fromRGBO(204, 157, 118, 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(45)))
                                    : BoxDecoration(
                                    color: Color.fromRGBO(247, 247, 247, 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(45))
                                ),
                                child: Text(
                                  timeFilter[index],
                                  style: TextStyle(fontSize: 16.0),
                                )
                            )
                        ),
                      )),
                  itemCount: timeFilter.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                child: mid,
              ),
              Container(
                height: 120,

                child: GridView.builder(
                  gridDelegate:
                  new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,childAspectRatio: 0.50,),
                  itemBuilder: (_, index) => Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.0,
                        ),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedCategory = categoryFilter[index];
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 14.0, horizontal: 10.0),
                                decoration: selectedCategory ==
                                    categoryFilter[index]
                                    ? BoxDecoration(
                                    color: Color.fromRGBO(204, 157, 118, 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(45)))
                                    : BoxDecoration(
                                    color: Color.fromRGBO(247, 247, 247, 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(45))
                                ),
                                child: Text(
                                  categoryFilter[index],
                                  style: TextStyle(fontSize: 16.0),
                                ))),
                      )),
                  itemCount: categoryFilter.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                child: down,
              ),
              FlutterSlider(

                values: [0,10000],
                max: 10000,
                min: 0,
                rangeSlider: true,

//                onDragging: (handlerIndex, lowerValue, upperValue) {
//                  _lowerValue = lowerValue;
//                  _upperValue = upperValue;
//                  setState(() {});
//                },
                tooltip: FlutterSliderTooltip(
                  leftPrefix: Icon(Icons.attach_money, size: 19, color: Colors.black45,),
                  rightPrefix: Icon(Icons.attach_money, size: 19, color: Colors.black45,),
                ),
              ),

//              Container(
//                height: 120,
//                child: GridView.builder(
//                  gridDelegate:
//                  new SliverGridDelegateWithFixedCrossAxisCount(
//                    crossAxisCount: 2,childAspectRatio: 0.50,),
//                  itemBuilder: (_, index) => Center(
//                      child: Padding(
//                        padding: EdgeInsets.symmetric(
//                          horizontal: 8.0,
//                        ),
//                        child: InkWell(
//                            onTap: () {
//                              setState(() {
//                                selectedPrice = priceFilter[index];
//                              });
//                            },
//                            child: Container(
//                                padding: EdgeInsets.symmetric(
//                                    vertical: 14.0, horizontal: 10.0),
//                                decoration: selectedPrice == priceFilter[index]
//                                    ? BoxDecoration(
//                                    color: Color.fromRGBO(204, 157, 118, 1),
//                                    borderRadius:
//                                    BorderRadius.all(Radius.circular(45)))
//                                    : BoxDecoration(
//                                    color: Color.fromRGBO(247, 247, 247, 1),
//                                    borderRadius:
//                                    BorderRadius.all(Radius.circular(45))
//                                ),
//                                child: Text(
//                                  priceFilter[index],
//                                  style: TextStyle(fontSize: 16.0),
//                                ))),
//                      )),
//                  itemCount: priceFilter.length,
//                  scrollDirection: Axis.horizontal,
//                ),
//              ),
              Spacer(),
              Center(
                child: _getUpperLayer(),
              )

            ],
          ),
        ),
      ),
    );
  }
}
