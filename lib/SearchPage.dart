
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:last_mile/shopList.dart';
import 'package:last_mile/viewproduct.dart';
import 'package:rubber/rubber.dart';

import 'advancefilters.dart';
import 'colors.dart';
import 'productlisting.dart';
import 'models/product.dart';

class SearchPage extends StatefulWidget {
  int a;

  SearchPage(this.a);
  @override
  _SearchPageState createState() => _SearchPageState(a);
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  int a;
  _SearchPageState(this.a);

  String selectedPeriod;
  String selectedCategory;
  String selectedPrice;


  List<String> timeFilter = [
    'Brand',
    'New',
    'Latest',
    'Trending',
    'Discount',
  ];

  List<String> categoryFilter = [
    'Skull Candy',
    'Boat',
    'JBL',
    'Micromax',
    'Seg',
  ];

  List<String> priceFilter = [
    '\$50-200',
    '\$200-400',
    '\$400-800',
    '\$800-1000',
  ];

  List<Product> searchResults = [];

  TextEditingController searchController = TextEditingController();

  RubberAnimationController _controller;

  @override
  void initState() {
   if(a == 1)
     {
       one = topheader;
       two = _getLowerLayer();
       Future.delayed(Duration.zero, () {
         three = _getUpperLayer(context);
       });
//       WidgetsBinding.instance.addPostFrameCallback((_) async {
//         three = _getUpperLayer(context);
//       });
     }
   else{
     one= topheaders;
     two = ShopList();
     Future.delayed(Duration.zero, () {
       three = _search(context);
     });
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       three = _search(context);
//     });
   }
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

  void _expand() {
    _controller.expand();
  }

  Widget two ;

  Widget three=Container(
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

      child:  Padding(
        padding: EdgeInsets.only(bottom:30.0),
        child: Container(
          width: 250,
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromRGBO(60, 111, 102, 1),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Center(
              child: new Text("SEARCH",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 15.0))),


        ),
      ),


    );


  Widget one;
static Widget topheader = Container(
  child: Column(children: <Widget>[
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Find your product',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: darkGrey),
            ),
            Padding(
              padding: EdgeInsets.only(top:10.0,bottom: 10.0),
              child: Text(
                'Search through more than 1000+ shops',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: darkGrey),
              ),
            )

          ],
        ),


      ),
    ),
  ],),
);
  static Widget topheaders = Container(
    child: Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Find your shops',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: darkGrey),
              ),
              Padding(
                padding: EdgeInsets.only(top:10.0,bottom: 10.0),
                child: Text(
                  'Search a shop with 5 km radius',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: darkGrey),
                ),
              ),

              Container(
                  height: 40.0,
                  padding: EdgeInsets.only(bottom:10.0),
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                      border:
                      Border(bottom: BorderSide(color: Colors.black, width: 1))),
                  child: TextField(

                    cursorColor: darkGrey,
                    decoration: InputDecoration(
                      hintText: 'Gift',
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      suffixIcon: SvgPicture.asset('assets/search_icon.svg', fit: BoxFit.scaleDown,),
                    ),
                  ),
                ),


            ],
          ),


        ),
      ),
    ],),
  );
  Widget _getLowerLayer() {
    return Container(

      child: Column(
        children: <Widget>[

          Container(
            height: 40.0,
            padding: EdgeInsets.only(top:10.0),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(color: Colors.black, width: 1))),
            child: TextField(
              controller: searchController,
//              onChanged: (value) {
//                if(value.isNotEmpty) {
//                  List<Product> tempList = List<Product>();
//                  products.forEach((product) {
//                    if(product.name.toLowerCase().contains(value)) {
//                      tempList.add(product);
//                    }
//                  });
//                  setState(() {
//                    searchResults.clear();
//                    searchResults.addAll(tempList);
//                  });
//                  return;
//                } else {
//                  setState(() {
//                    searchResults.clear();
//                    searchResults.addAll(products);
//                  });
//                }
//              },
              cursorColor: darkGrey,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  border: InputBorder.none,
                  suffixIcon: SvgPicture.asset('assets/search_icon.svg', fit: BoxFit.scaleDown,),
                  ),
            ),
          ),
//          Flexible(
//            child: Container(
//              color: Colors.orange[50],
//              child: ListView.builder(
//                  itemCount: searchResults.length,
//                  itemBuilder: (_, index) => Padding(
//                      padding: EdgeInsets.symmetric(horizontal: 16.0),
//                      child: ListTile(
//                        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(_)=>ViewProductPage(product: searchResults[index],))),
//                        title: Text(searchResults[index].name),
//                      ))),
//            ),
//          )
        ],
      ),
    );
  }

  Widget _getUpperLayer(context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
           padding: EdgeInsets.only(bottom:0.0),
           child: Container(

             width: MediaQuery.of(context).size.width /1.5,
             height: 50,
             decoration: BoxDecoration(
               color: Color.fromRGBO(60, 111, 102, 1),
               borderRadius: BorderRadius.circular(25.0),
             ),
             child: Center(
                 child: new Text("SEARCH",
                     style: const TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.w600,
                         fontStyle: FontStyle.normal,
                         fontSize: 15.0))),


           ),
         ),
          Padding(
            padding: EdgeInsets.only(top:10.0,bottom: 10.0),
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
                    child: new Text("ADVANCE FILTERS",
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
  Widget _search(context) {
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

          child:  Padding(
              padding: EdgeInsets.only(bottom:30.0),
              child: Container(

                width: MediaQuery.of(context).size.width /1.5,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(60, 111, 102, 1),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                    child: new Text("SEARCH",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0))),


              ),
            ),


    );
  }



  @override
  Widget build(BuildContext context) {

    Widget appBar = Container(

      padding: EdgeInsets.only(top:10.0),
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(''),

          Center(child: Text('SEARCH',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),),


              IconButton(

                  icon: Icon(Icons.clear))

        ],
      ),
    );

    return Material(

      child: SafeArea(

     //   child: SingleChildScrollView(
          child: Container(
          //  height: MediaQuery.of(context).size.height/2,
          //  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                appBar,


                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: one,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: two,
                  ),
                ),
                Spacer(),
                SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child:  SingleChildScrollView(
                        child: three,
                      )
                  ),
                )

//                RubberBottomSheet(
//                  lowerLayer: _getLowerLayer(), // The underlying page (Widget)
//                  upperLayer: _getUpperLayer(), // The bottomsheet content (Widget)
//                  animationController: _controller, // The one we created earlier
//                )
              ],
            ),
          ),

        //),
      ),
    );
  }
}



