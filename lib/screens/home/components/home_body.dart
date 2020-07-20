import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/models/recipe_bundel.dart';
import 'package:recipe_app/screens/home/components/category.dart';
import 'package:recipe_app/size_config.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[Categories(), RecipeBundelCard()],
    );
  }
}

class RecipeBundelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return AspectRatio(
      aspectRatio: 1.65,
      child: Container(
        decoration: BoxDecoration(
            color: repiceBundles[0].color,
            borderRadius: BorderRadius.circular(defaultSize * 1.8)),
        child: AspectRatio(
          aspectRatio: 0.71,
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      repiceBundles[0].title,
                      style: TextStyle(
                          fontSize: defaultSize * 2.2, color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: defaultSize * 0.5,
                    ),
                    Text(
                      repiceBundles[0].description,
                      style: TextStyle(color: Colors.white54),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    buildInfoRow(defaultSize,
                        iconSrc: "assets/icons/pot.svg",
                        text: "${repiceBundles[0].recipes} Recipe"),
                    SizedBox(
                      height: defaultSize * 0.5,
                    ),
                    buildInfoRow(defaultSize,
                        iconSrc: "assets/icons/chef.svg",
                        text: "${repiceBundles[0].chefs} Chefs"),
                    Spacer()
                  ],
                ),
              )),
              SizedBox(
                width: defaultSize * 0.5,
              ),
              Image.asset(
                repiceBundles[0].imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildInfoRow(double defaultSize, {String iconSrc, text}) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(iconSrc),
        SizedBox(
          width: defaultSize,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
