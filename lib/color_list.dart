
import 'package:flutter/material.dart';

import 'colors.dart';

class ColorList extends StatefulWidget {
  final List<Color> colorList;

  ColorList(this.colorList, {Key key}) : super(key: key);

  @override
  _ColorListState createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int active;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Color',
              style: TextStyle(color: Colors.white, shadows: shadow),
            ),
          ),
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.colorList.length,

              /// list of button colors based on colorList
              itemBuilder: (_, index) => InkWell(
                onTap: () {
                  setState(() {
                    ///sets the color pressed to be the active one
                    active = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 8.0),

                  ///scale based on active color
                  child: Transform.scale(
                    scale: active == index ? 1.2 : 1,
                    child: ColorOption(widget.colorList[index]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorOption extends StatelessWidget {
  final Color color;

  const ColorOption(this.color, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: color),
    );
  }
}
