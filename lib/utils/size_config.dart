import 'package:flutter/cupertino.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  static double? _safeAreaHorizontal;
  static double? _safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = SizeConfig._mediaQueryData!.size.width;
    screenHeight = SizeConfig._mediaQueryData!.size.height;
    blockSizeHorizontal = SizeConfig.screenWidth! / 100;
    blockSizeVertical = SizeConfig.screenHeight! / 100;

    _safeAreaHorizontal = SizeConfig._mediaQueryData!.padding.left +
        SizeConfig._mediaQueryData!.padding.right;
    _safeAreaVertical = SizeConfig._mediaQueryData!.padding.top +
        SizeConfig._mediaQueryData!.padding.bottom;
    safeBlockHorizontal =
        (SizeConfig.screenWidth! - SizeConfig._safeAreaHorizontal!) / 100;
    safeBlockVertical =
        (SizeConfig.screenHeight! - SizeConfig._safeAreaVertical!) / 100;
  }
}
