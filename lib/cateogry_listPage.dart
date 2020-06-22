
import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:last_mile/category_card.dart';


import 'colors.dart';
import 'models/category.dart';


class CategoryListPage extends StatefulWidget {
  @override
  _CategoryListPageState createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  final SwiperController swiperController = SwiperController();
  List<Category> categories = [
    Category(
      '\$5650',
      'W:32cm H:26cm',
      'Gulcehre Ibrik',
      'assets/1.png',
    ),
    Category(
      '\$5650',
      'W:32cm H:26cm',
      'Gulcehre Ibrik',
      'assets/2.png',
    ),
    Category(
      '\$5650',
      'W:32cm H:26cm',
      'Gulcehre Ibrik',
      'assets/3.png',
    ),
    Category(
      '\$5650',
      'W:32cm H:26cm',
      'Gulcehre Ibrik',
      'assets/4.png',
    ),
  ];

  List<Category> searchResults;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchResults = categories;
  }


  @override
  Widget build(BuildContext context) {

//    double cardHeight = MediaQuery.of(context).size.height/2.7;
//    double cardWidth = MediaQuery.of(context).size.width/1.8;
//    if(categories==null)
//      categories = [];
//
//    return SizedBox(
//      height: cardHeight,
//      child: Swiper(
//        itemCount: categories.length,
//        itemBuilder: (_, index) {
//          return CategoryCard(
//              height: cardHeight,
//              width: cardWidth,
//              category: categories[index]
//          );
//        },
//        scale: 0.8,
//        controller: swiperController,
//        viewportFraction: 0.6,
//        loop: false,
//        fade: 0.5,
//        pagination: SwiperCustomPagination(
//          builder: (context, config) {
//            if (config.itemCount > 20) {
//              print(
//                  "The itemCount is too big, we suggest use FractionPaginationBuilder instead of DotSwiperPaginationBuilder in this sitituation");
//            }
//            Color activeColor = mediumYellow;
//            Color color = Colors.grey[300];
//            double size = 10.0;
//            double space = 5.0;
//
//            if (config.indicatorLayout != PageIndicatorLayout.NONE &&
//                config.layout == SwiperLayout.DEFAULT) {
//              return new PageIndicator(
//                count: config.itemCount,
//                controller: config.pageController,
//                layout: config.indicatorLayout,
//                size: size,
//                activeColor: activeColor,
//                color: color,
//                space: space,
//              );
//            }
//
//            List<Widget> dots = [];
//
//            int itemCount = config.itemCount;
//            int activeIndex = config.activeIndex;
//
//            for (int i = 0; i < itemCount; ++i) {
//              bool active = i == activeIndex;
//              dots.add(Container(
//                key: Key("pagination_$i"),
//                margin: EdgeInsets.all(space),
//                child: ClipOval(
//                  child: Container(
//                    decoration: BoxDecoration(
//                      shape: BoxShape.circle,
//                      color: active ? activeColor : color,
//                    ),
//                    width: size,
//                    height: size,
//                  ),
//                ),
//              ));
//            }
//
//            return Padding(
//              padding: const EdgeInsets.all(16.0),
//              child: Align(
//                alignment: Alignment.centerLeft,
//                child: Column(
//                  mainAxisSize: MainAxisSize.min,
//                  children: dots,
//                ),
//              ),
//            );
//          },
//        ),
//      ),
//    );

    double cardHeight = MediaQuery.of(context).size.height/3.5;
    double cardWidth = MediaQuery.of(context).size.width/2.2;
    if(categories==null)
      categories = [];
    return   SizedBox(
      height: cardHeight,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (_, index) {
            return CategoryCard(
              category: categories[index],
            );
          }
      ),
    );
  }
}
