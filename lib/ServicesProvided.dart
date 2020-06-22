import 'package:flutter/material.dart';
import 'package:last_mile/favourite_list.dart';
import 'package:last_mile/mainPage.dart';
import 'package:last_mile/models/Cart.dart';
import 'package:last_mile/service_list.dart';

import 'SearchPage.dart';
import 'Settings.dart';
import 'cart.dart';
import 'cartListing.dart';
import 'colors.dart';
import 'favourites.dart';
import 'fullCart.dart';

class ServicesProvided extends StatefulWidget {

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<ServicesProvided> {
  String timelines = 'Subscriptions';
  String selectedTimeline = 'Manage your premium subscriptions';
  Widget appBar (){
    return  Container(
      padding: EdgeInsets.only(top:10.0),
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.search)),
          Text('Subscriptions',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
          IconButton(
              icon: Icon(Icons.clear)),
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
      else{
        Navigator.of(context).push(MaterialPageRoute(builder:(_)=>MainPage(0,0)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              appBar(),

              Padding(
                padding: EdgeInsets.only(top:20.0),
                child: Text(
                  timelines,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: darkGrey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20.0),
                child: Text(
                  selectedTimeline,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: darkGrey),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: ServiceList(),

              ),

            ],
          ),

        ),
      ),
    );
  }
}
