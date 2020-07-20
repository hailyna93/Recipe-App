import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[],
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "India", "Italia", "Mexico", "Chine"];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
