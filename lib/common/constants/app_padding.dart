import 'package:flutter/widgets.dart';

class AppPadding {
  AppPadding._();

  // Raw padding values
  static const double p100 = 100;
  static const double p72 = 72;
  static const double p64 = 64;
  static const double p56 = 56;
  static const double p48 = 48;
  static const double p40 = 40;
  static const double p32 = 32;
  static const double p36 = 36;
  static const double p24 = 24;
  static const double p16 = 16;
  static const double p12 = 12;
  static const double p8  = 8;
  static const double p4  = 4;
  static const double p2  = 2;

  // EdgeInsets (all sides)
  static const all72 = EdgeInsets.all(p72);
  static const all64 = EdgeInsets.all(p64);
  static const all56 = EdgeInsets.all(p56);
  static const all48 = EdgeInsets.all(p48);
  static const all40 = EdgeInsets.all(p40);
  static const all32 = EdgeInsets.all(p32);
  static const all24 = EdgeInsets.all(p24);
  static const all16 = EdgeInsets.all(p16);
  static const all12 = EdgeInsets.all(p12);
  static const all8  = EdgeInsets.all(p8);
  static const all4  = EdgeInsets.all(p4);

  // Horizontal / vertical
  static const px24 = EdgeInsets.symmetric(horizontal: p24);
  static const py24 = EdgeInsets.symmetric(vertical: p24);
  static const px16 = EdgeInsets.symmetric(horizontal: p16);
  static const py16 = EdgeInsets.symmetric(vertical: p16);
  static const px8  = EdgeInsets.symmetric(horizontal: p8);
  static const py8  = EdgeInsets.symmetric(vertical: p8);
  static const px4  = EdgeInsets.symmetric(horizontal: p4);
  static const py4  = EdgeInsets.symmetric(vertical: p4);

  // Combo
  static const px16py8 = EdgeInsets.symmetric(horizontal: p16, vertical: p8);
  static const px16py12 = EdgeInsets.symmetric(horizontal: p16, vertical: p12);
}
