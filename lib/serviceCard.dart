

import 'package:calendarro/date_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:last_mile/calendar.dart';
import 'package:last_mile/mainPage.dart';
import 'package:last_mile/models/Decor.dart';
import 'package:calendarro/calendarro.dart';

import 'DeliveryStatus.dart';
import 'models/Services.dart';

class ServiceCard extends StatefulWidget {
  final Services service;


  const ServiceCard({Key key, this.service}) : super(key: key);
  @override
  ServiceCards createState() => ServiceCards(this.service);

}
class ServiceCards extends State<ServiceCard> {

  final Services service;

  ServiceCards(this.service);

  DateTime selected;

  _showDateTimePicker() async {
    selected = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1960),
      lastDate: new DateTime(2050),
    );

    setState(() {});
  }



  // monthCalendarro;
  Calendarro monthCalendarro;
  var startDate = DateUtils.getFirstDayOfCurrentMonth();
  var endDate = DateUtils.getLastDayOfNextMonth();
//  void _showDialog() {
//    // flutter defined function
//    showDialog(
//      context: context,
//      builder: (BuildContext context) {
//
//        // return object of type Dialog
//        return Scaffold(
//
//          body: Column(
//            children: <Widget>[
//              Container(
//                color: Colors.orange,
//                child: Calendarro(),
//              ),
//              Container(height: 32.0),
//              monthCalendarro = Calendarro(
//                  startDate: startDate,
//                  endDate: endDate,
//                  displayMode: DisplayMode.MONTHS,
//                  selectionMode: SelectionMode.MULTI,
//                  weekdayLabelsRow: CustomWeekdayLabelsRow(),
//
//            ],
//          ),
//        );
//
//              // usually buttons at the bottom of the dialog
//
//
//
//      },
//    );
//  }

  @override
  Widget build(BuildContext context) {


    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Container(
            width: MediaQuery.of(context).size.width/1.5,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(8.0,),
            child: InkWell(
              onTap: () =>  Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => DeliveryStatus())),
              child: Card(
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: Container(
                        padding: EdgeInsets.all(2.0,),
                        height: MediaQuery.of(context).size.height/2,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(

                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 200,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Image.asset(service.image),
                              ),
                            ),


                            Row(
                          //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top:0.0,left: 4.0),
                                    child: Text(
                                      service.name,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w300,color: Colors.black),
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top:0.0),
                                    child: IconButton(
                                        icon: Icon(Icons.favorite,color: Colors.red,size: 25.0,)
                                    ),
                                  ),
                                ],
                              ),
                            Padding(
                                padding: EdgeInsets.only(top:0.0,left: 4.0),
                                child: Text(
                                  service.deliverytime,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.black),
                                ),
                              ),



                            Padding(
                              padding: EdgeInsets.only(top:4.0,),
                              child: Row(
                                children: <Widget>[
                                  RatingBar(
                                    initialRating: service.ratings,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemSize: 15,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.green,
                                      size: 10,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                 InkWell(
                                     onTap: ()=>  _showDateTimePicker(),
//                                         Navigator.of(context)
//                                         .push(MaterialPageRoute(builder: (_) => Calendar())),
                                   child:  Container(
                                     height: 40,
                                     width: 45,
                                     decoration: BoxDecoration(
                                       color: Colors.black,
                                       borderRadius: BorderRadius.only(
                                           topLeft: Radius.circular(15), bottomLeft: Radius.circular(15), bottomRight: Radius.circular(10)),

                                     ),
                                     child:Image.asset(service.calender,color: Colors.white,),
                                   ),
                                 )
                                ],
                              )
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


class CustomWeekdayLabelsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Text("M", textAlign: TextAlign.center)),
        Expanded(child: Text("T", textAlign: TextAlign.center)),
        Expanded(child: Text("W", textAlign: TextAlign.center)),
        Expanded(child: Text("T", textAlign: TextAlign.center)),
        Expanded(child: Text("F", textAlign: TextAlign.center)),
        Expanded(child: Text("S", textAlign: TextAlign.center)),
        Expanded(child: Text("S", textAlign: TextAlign.center)),
      ],
    );
  }
}
