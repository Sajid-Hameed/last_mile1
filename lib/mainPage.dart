
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:last_mile/Decors.dart';
import 'package:last_mile/SearchPage.dart';
import 'package:last_mile/advancefilters.dart';
import 'package:last_mile/cartListing.dart';
import 'package:last_mile/fullCart.dart';
import 'package:last_mile/index.dart';
import 'package:last_mile/models/product.dart';
import 'package:last_mile/product_list.dart';
import 'package:last_mile/showCart.dart';
import 'ServicesProvided.dart';
import 'Settings.dart';
import 'favourites.dart';
import 'cateogry_listPage.dart';
import 'colors.dart';
import 'models/Decor.dart';


class MainPage extends StatefulWidget {
  int a;
  int b;
  Product products;
  Decor decor;
  MainPage(this.a,this.b);
  @override
  _MainPageState createState() => _MainPageState(a,b);
}

String timelines = 'Gifts Collection';
String selectedTimeline = 'Find the perfect gift for your loved ones';



class _MainPageState extends State<MainPage>
    with TickerProviderStateMixin<MainPage> {
  int a;
  int b;

  List<Product> product;
  TabController bottomTabController;
  _MainPageState(this.a,this.b);
  @override
  void initState() {
    super.initState();

    bottomTabController = TabController(length: 5, vsync: this);
   // bottomTabController.

//    if(bottomTabController == 1)
//      {
//        Navigator.of(context)
//            .push(MaterialPageRoute(builder: (_) => SearchPage(1)));
//      }
//    else if(bottomTabController == 2)
//    {
//      Navigator.of(context)
//          .push(MaterialPageRoute(builder: (_) => SearchPage(1)));
//    }
//    else if(bottomTabController == 3)
//    {
//      Navigator.of(context)
//          .push(MaterialPageRoute(builder: (_) => SearchPage(1)));
//    }
//    else if(bottomTabController == 4)
//    {
//      Navigator.of(context)
//          .push(MaterialPageRoute(builder: (_) => SearchPage(1)));
//    }
//    else
//    {
//      Navigator.of(context)
//          .push(MaterialPageRoute(builder: (_) => MainPage(a,b,products,decor)));
//    }
    if(a == 1){
      bt = bottom();
    }else
      {
      bt = bts;
      }
  }
  Widget bt;
  Widget bts = null;
  Widget bottom (){
    return Container(
      height: 60,
      color: Color.fromRGBO(60, 111, 102, 1),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Text('Items in cart: 3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
        Spacer(),
        InkWell(
          onTap: ()=>bottomsheet(),
        child: Text('View cart',style: TextStyle(color: Colors.white)),
      )

      ],
    ),
    ),
    );
  }

   void bottomsheet(){
    // Product product;
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(24), topLeft: Radius.circular(24)),
        ),
        context: context,
        builder: (BuildContext bc){
          return   Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 15.0),
                child: Text('ORDER DETAILS',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400),),
              ),
              SizedBox(
                height: 260,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: cart.length,
                    itemBuilder: (_, index) {
                      indo = index;
                      return ShowCarts(
                        cart: cart[index],


                      );
                    }
                ),
              ),

              Padding(
                  padding: EdgeInsets.only(top:20.0,bottom: 10.0,left: 60.0),
                  child: InkWell(
                    onTap:()=> Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => FullCart(cart:cart[0]))),
//                        Navigator.of(context)
//                        .push(MaterialPageRoute(builder: (_) => FullCart(cart: cart[2],),)),
                    child: Container(

                      width: MediaQuery.of(context).size.width /1.5,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(60, 111, 102, 1),
                        border: Border.all(color: Color.fromRGBO(60, 111, 102, 1),),
                        borderRadius: BorderRadius.circular(25.0),
                      ),

                        child: Center(
                            child: new Text("VIEW FULL CART",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15.0))),



                    ),
                  )
              ),
            ],
          );
        }


    );
  }



  Widget drawers(){
   return Drawer(

      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(

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

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(70.0)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('Anwar Sawyer',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  )
                ],
              ),

          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Promotions'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Categories'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Account'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('About App'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('FeedBack'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),

              ListTile(
                title: Text('Tips At Start'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },

               trailing: Switch(
                  value: NotificationisSwitched,
                  onChanged: (value) {
                    setState(() {
                      NotificationisSwitched = value;
                      if(NotificationisSwitched == false)
                      {
                        notiEnable = 'Disable';
                      }
                      else{
                        notiEnable = 'Enable';
                      }

                    });
                  },
                  activeTrackColor: Color.fromRGBO(60, 111, 102, 1),
                  activeColor: Colors.white,
                ),
              ),



        ],
      ),
    );
  }

  Widget appBar (){
    return  Container(
      padding: EdgeInsets.only(top:10.0),
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () => _scaffoldKey.currentState.openDrawer(),
            child: IconButton(
                icon: Icon(Icons.menu)),
          ),
          Padding(
            padding: EdgeInsets.only(left:30.0),
            child: Text('STORE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
          ),
          Row(
            children: <Widget>[
              IconButton(

                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SearchPage(1))),
    icon: Icon(Icons.search),

              ),
              IconButton(
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => AdvanceFilters())),
                  icon: SvgPicture.asset('assets/Symbols.svg', fit: BoxFit.scaleDown,),)
            ],
          )
        ],
      ),
    );
  }


  Widget topHeader (){
    return  Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
        child: Column(
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Flexible(
                  child: InkWell(
                      onTap: () {
                        setState(() {

                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              timelines,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: darkGrey),
                            ),
                            RatingBar(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemSize: 20,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 5,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child:  Row(
                                children: <Widget>[
                                  Text(
                                    'Featured Products',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),
                                  ),
                                  Spacer(),
                                  Text(
                                      'See All'
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ));
  }

  Widget tabBar (){
    return Padding(
      padding: EdgeInsets.all(16.0),
      child:  Row(
        children: <Widget>[
          Text(
            'Clothing Deals',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),
          ),
          Spacer(),
          Text(
              'See All'
          )
        ],
      ),
    );
  }
  Widget tabBars (){
    return Padding(
      padding: EdgeInsets.all(16.0),
      child:  Row(
        children: <Widget>[
          Text(
            'Decors',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),
          ),
          Spacer(),
          Text(
              'See All'
          )
        ],
      ),
    );
  }






  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex == 1){
        Navigator.of(context).push(MaterialPageRoute(builder:(_)=>ServicesProvided()));
      }
      else if(_selectedIndex == 2){
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => FullCart(cart:cart[0])));
      }
      else if(_selectedIndex == 3){
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => Favourites()));
      }
      else if(_selectedIndex == 4){
        Navigator.of(context).push(MaterialPageRoute(builder:(_)=>Setting()));
      }
    });
  }


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool NotificationisSwitched = false;
  String notiEnable= 'Disable';
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      key: _scaffoldKey,
      drawer: drawers(),
      backgroundColor: Colors.white,
      bottomSheet: bt,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.border_all,color: Colors.black,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work,color: Colors.black,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border,color: Colors.black,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.black,),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,

        onTap: _onItemTapped,
      ),


    body: Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              appBar(),
              topHeader(),


              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: ProductList(),

              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child:Align(
                    alignment: Alignment.bottomCenter,
                    child: tabBar(),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child:Align(
                    alignment: Alignment.bottomCenter,
                    child: CategoryListPage(),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child:Align(
                    alignment: Alignment.bottomCenter,
                    child: tabBars(),
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: DecorList(),
              ),

            ],
          ),

        ),

      ),
    ),
    );
  }
}

