import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monster_garage/app/features/home/home_page_screens/big_screen.dart';
import 'package:monster_garage/app/features/home/home_page_screens/medium_screen.dart';
import 'package:monster_garage/app/features/home/home_page_screens/small_hor_screen.dart';
import 'package:monster_garage/app/features/home/home_page_screens/small_ver_screen.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;
    double pixelRatio = mediaQueryData.devicePixelRatio;
    var screenSize = MediaQuery.of(context).size;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 400) {
        return const SmallVerticalScreen();
      }
      if (constraints.maxWidth > 400 && constraints.maxWidth < 960) {
        return const SmallHorizontalScreen();
      }
      if (constraints.maxWidth > 960 && constraints.maxWidth < 1420) {
        return const MediumScreen();
      } else {
        return BigScreen();
      }
    });
  }
}
