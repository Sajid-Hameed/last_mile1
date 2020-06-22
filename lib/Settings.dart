import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool NotificationisSwitched = false;
  bool NewsletteisSwitched = false;
  String notiEnable= 'Disable';
  String newsEnable= 'Disable';
  Widget appBar (){
    return  Container(
      padding: EdgeInsets.only(top:10.0),
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      child: Row(

        children: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_back)),
          Padding(
            padding: EdgeInsets.only(left: 100.0),
            child: Text('Setting',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
          )
        ],
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    if(NotificationisSwitched == false)
    {
      notiEnable = 'Disable';
    }
    else{
      notiEnable = 'Enable';
    }
    if(NewsletteisSwitched == false)
    {
      newsEnable = 'Disable';
    }
    else{
      newsEnable = 'Enable';
    }
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            appBar(),
            Padding(
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Language',style: TextStyle(fontSize: 18.0,color: Colors.grey),),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text('Change',style: TextStyle(color: Colors.green)),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 10.0),
                    child: Text('English',style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
            ),
            Divider(indent: 20.0,endIndent: 20.0,),
            Padding(
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Password',style: TextStyle(fontSize: 18.0,color: Colors.grey),),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text('Change',style: TextStyle(color: Colors.green)),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 10.0),
                    child: Text('****************',style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
            ),
            Divider(indent: 20.0,endIndent: 20.0,),
            Padding(
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Location',style: TextStyle(fontSize: 18.0,color: Colors.grey),),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text('Edit',style: TextStyle(color: Colors.green)),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 10.0),
                    child: Text('Karachi, PK',style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
            ),
            Divider(indent: 20.0,endIndent: 20.0,),
            Padding(
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Receive Notifications',style: TextStyle(fontSize: 18.0,color: Colors.grey),),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Switch(
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
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 10.0),
                    child: Text(notiEnable,style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
            ),
            Divider(indent: 20.0,endIndent: 20.0,),
            Padding(
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Receive Newsletters',style: TextStyle(fontSize: 18.0,color: Colors.grey),),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Switch(
                          value: NewsletteisSwitched,
                          onChanged: (value) {
                            setState(() {
                              NewsletteisSwitched = value;
                              if(NewsletteisSwitched == false)
                              {
                                newsEnable = 'Disable';
                              }
                              else{
                                newsEnable = 'Enable';
                              }
                            });
                          },
                          activeTrackColor: Color.fromRGBO(60, 111, 102, 1),
                          activeColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 10.0),
                    child: Text(newsEnable,style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
            ),
            Divider(indent: 20.0,endIndent: 20.0,),
            Padding(
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Preferred method',style: TextStyle(fontSize: 18.0,color: Colors.grey),),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text('Change',style: TextStyle(color: Colors.green)),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 10.0),
                    child: Text('Paypal',style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
            ),
            Divider(indent: 20.0,endIndent: 20.0,),
            Padding(
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Preferred TIME',style: TextStyle(fontSize: 18.0,color: Colors.grey),),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text('Edit',style: TextStyle(color: Colors.green)),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 10.0),
                    child: Text('MT( 18:00 - 20:00 )',style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
            ),
            Divider(indent: 20.0,endIndent: 20.0,),
            Padding(
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Subscriptions',style: TextStyle(fontSize: 18.0,color: Colors.grey),),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text('View',style: TextStyle(color: Colors.green)),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 10.0),
                    child: Text('Manage Subscriptions',style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}
