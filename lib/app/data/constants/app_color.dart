import 'package:flutter/material.dart';

class AppColors {
  // static var primary = toRGB('7367f0');
  // static var primary = toRGB('40916c');
  // static var primary = toRGB('275d2b');
  // static var primary = toRGB('1f4a22');
  //
  // static var primary = Colors.blue.shade300;
  // static var primary = toRGB("457B9D");
  // static Color primary = toRGB("3C6E71");
  static Color primaryBlended =
      Color.alphaBlend(Colors.black.withOpacity(.9), toRGB("3C6E71"));
  // static Color primary = toRGB("275D2B"); // green
  static Color primaryDark = toRGB("102511"); // darker green
  static Color primary = Colors.purple[200]!;
  //
  static Color primaryMedium = primary.withAlpha(200);
  // static Color primaryLightt = primary.withAlpha(150);
  static Color primaryLightt = toRGB("a5c0d1");
  //
  // static Color primaryMedium = toRGB('a8a1ed');
  // static Color primaryLight = toRGB('dddce8');
  static Color primaryLight = toRGB('dad8f0');
  // static var secondary = toRGB('cecfed');
  static var secondary = Colors.grey.shade200;
  static var accent = Colors.yellow;

  static var red = Colors.red;
  static var green = Colors.green;
  static var lightPink = const Color.fromARGB(255, 245, 200, 200);
  static var grey = Colors.grey;
  static var white = Colors.white;
  static var black = Colors.black;
  static var black54 = Colors.black54;

  static var lightBG = toRGB('fff3f0');
  static var secondaryBG = toRGB('b2e4e5');
  static var darkBG = toRGB('F6FFFB');
}

Color toRGB(String hexCode) => Color(int.parse('0xff$hexCode'));
