import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWith;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWith = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWith * 0.024;
  }
}
