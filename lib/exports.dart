// Packages
export 'package:flutter_svg/flutter_svg.dart';

//Pages
export 'Pages/MyHomePage.dart';
export 'Pages/BedRoom.dart';

// ColorPallete
import 'package:flutter/material.dart';

class ColorPallete {
  static const Color background = Color(0xFF0a4da2);

  static const Color gridContainer = Color(0xFFf6f8fb);

  static const Color white = Color(0xFFFFFFFF);

  static const Color black = Color(0xFF000000);

  static const Color textDark = Color(0xFF002d67);

  static const Color intensityIndicator = Color(0xFFffd339);

  static const Color listTile = Color(0xFF093b7b);
  static const List<Color> colors = [
    Color(0xFFff9b9b),
    Color(0xFF94eb9e),
    Color(0xFF94caeb),
    Color(0xFFa594eb),
    Color(0xFFde94eb),
    Color(0xFFebd094)
  ];
}

//Responsive
class Screen {
  Size screenSize;

  Screen(this.screenSize);

  double wp(percentage) {
    return percentage / 100 * screenSize.width;
  }

  double hp(percentage) {
    return percentage / 100 * screenSize.height;
  }
}
