// Place fonts/icomoon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: icomoon
//      fonts:
//       - asset: fonts/icomoon.ttf
import 'package:flutter/widgets.dart';

class Icomoon {
  Icomoon._();

  static const String _fontFamily = 'icomoon';

  static const IconData star = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData add = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData arrowBack = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData settings = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData cancel = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData close = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData delete = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData menu = IconData(0xe907, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe908, fontFamily: _fontFamily);
  static const IconData search = IconData(0xe909, fontFamily: _fontFamily);
}
