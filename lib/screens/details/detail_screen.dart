import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/components/my_bottom_nav_bar.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screens/details/components/detail_body.dart';
import 'package:recipe_app/size_config.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: MyBottomNavBar(),
      body: DetailBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          )),
      centerTitle: true,
      title: Text("Profile"),
      actions: <Widget>[
        FlatButton(
            onPressed: () {},
            child: Text(
              "Edit".toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.defaultSize * 1.6,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
