import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/size_config.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "India", "Italia", "Mexico", "Chine"];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 2),
      child: SizedBox(
        height: SizeConfig.defaultSize * 3.5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategoriItem(index)),
      ),
    );
  }

  Widget buildCategoriItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: SizeConfig.defaultSize * 2),
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize * 2,
            vertical: SizeConfig.defaultSize * 0.5),
        decoration: BoxDecoration(
            color:
                selectIndex == index ? Color(0xFFeFF3EE) : Colors.transparent,
            borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 1.6)),
        child: Text(
          categories[index],
          style: TextStyle(
              color: selectIndex == index ? kPrimaryColor : Color(0xFFC2C2B5),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
