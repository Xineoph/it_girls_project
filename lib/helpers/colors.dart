import 'package:flutter/material.dart';

class CustomColors {
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color grey_3Color = Color(0xFF828282);
  static const Color grey_2Color = Color(0xFF4F4F4F);

  static const Color blushColor = Color(0xFFD96F6E);
  static const Color softPinkColor = Color(0xFFF3A492);

  static const Color yellowColor = Color(0xFFF2D05C);

  static const Color blueColor = Color(0xFF53889D);

  static const Color babyColor = Color(0xFFBBD1D9);

  static const Color pinkColor = Color(0xFFF3A492);

  static const gradientYellowPink = LinearGradient(
    colors: [
      CustomColors.yellowColor,
      CustomColors.softPinkColor,
    ],
  );
  static const gradientBlueBaby = LinearGradient(
    colors: [
      CustomColors.blueColor,
      CustomColors.babyColor,
    ],
  );
  static const gradientPinkBlush = LinearGradient(
    colors: [
      CustomColors.pinkColor,
      CustomColors.blushColor,
    ],
  );
  static const gradientBabyYellow = LinearGradient(
    colors: [
      CustomColors.babyColor,
      CustomColors.yellowColor,
    ],
  );
  static const gradientBlushYellow = LinearGradient(
    colors: [
      CustomColors.blushColor,
      CustomColors.yellowColor,
    ],
  );

  static const double bottomPadding = 50;
}
