import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarPageState createState() => new _CalendarPageState();
}

class _CalendarPageState extends State<Calendar> {
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

  @override
  Widget build(BuildContext context) {
    var dateFormat_1 = new Column(
      children: <Widget>[
        new SizedBox(
          height: 30.0,
        ),
        selected != null
            ? new Text(
          new DateFormat('yyyy-MMMM-dd').format(selected),
          style: new TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        )
            : new SizedBox(
          width: 0.0,
          height: 0.0,
        ),
      ],
    );

    var dateFormat_2 = new Column(
      children: <Widget>[
        new SizedBox(
          height: 30.0,
        ),
        selected != null
            ? new Text(
          new DateFormat('yyyy-MM-dd').format(selected),
          style: new TextStyle(
            color: Colors.deepPurple,
            fontSize: 20.0,
          ),
        )
            : new SizedBox(
          width: 0.0,
          height: 0.0,
        ),
      ],
    );

    var dateStringParsing = new Column(
      children: <Widget>[
        new SizedBox(
          height: 30.0,
        ),
        selected != null
            ? new Text(
          new DateFormat('yyyy-MM-dd h:m:s')
              .format(DateTime.parse("2018-09-15 20:18:04Z")),
          style: new TextStyle(
            color: Colors.green,
            fontSize: 20.0,
          ),
        )
            : new SizedBox(
          width: 0.0,
          height: 0.0,
        ),
      ],
    );

    var dateUtcLocal = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new SizedBox(
          height: 30.0,
        ),
        selected != null
            ? new Text(
          "UTC: " +
              new DateFormat('yyyy-MM-dd h:m:s').format(selected.toUtc()),
          style: new TextStyle(
            color: Colors.blue,
            fontSize: 20.0,
          ),
        )
            : new SizedBox(
          width: 0.0,
          height: 0.0,
        ),
        new SizedBox(
          height: 30.0,
        ),
        selected != null
            ? new Text(
          "Local: " +
              new DateFormat('yyyy-MM-dd h:m:s')
                  .format(selected.toLocal()),
          style: new TextStyle(
            color: Colors.black26,
            fontSize: 20.0,
          ),
        )
            : new SizedBox(
          width: 0.0,
          height: 0.0,
        ),
      ],
    );

    var compareDates = new Column(
      children: <Widget>[
        new Text(
          selected != null
              ? selected.isBefore(new DateTime.now()) ? ": True" : ": False"
              : "",
          style: new TextStyle(color: Colors.red, fontSize: 20.0),
        ),
      ],
    );

    var dateComapereFormat = new Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        selected != null
            ? new Text(
          new DateFormat('yyyy-MM-dd').format(selected),
          style: new TextStyle(color: Colors.green, fontSize: 17.0),
        )
            : new SizedBox(
          width: 0.0,
          height: 0.0,
        ),
        new SizedBox(
          width: 10.0,
        ),
        selected != null
            ? new Text(
          "After",
          style: new TextStyle(color: Colors.green, fontSize: 17.0),
        )
            : new SizedBox(
          width: 0.0,
          height: 0.0,
        ),
        new SizedBox(
          width: 10.0,
        ),
        selected != null
            ? new Text(
          new DateFormat('yyyy-MM-dd').format(new DateTime.now()),
          style: new TextStyle(color: Colors.green, fontSize: 17.0),
        ): new SizedBox(
          width: 0.0,
          height: 0.0,
        ),
        new SizedBox(
          width: 10.0,
        ),
        compareDates,
      ],
    );
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Date and Time",
            style: new TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(
                Icons.date_range,
                color: Colors.white,
              ),
              onPressed: () => _showDateTimePicker(),
            )
          ],
        ),
        body: new Padding(
          padding: EdgeInsets.all(20.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              dateFormat_1,
              dateFormat_2,
              dateStringParsing,
              dateUtcLocal,
              new SizedBox(
                height: 20.0,
              ),
              dateComapereFormat
            ],
          ),
        ));
  }
}