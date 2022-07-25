import 'package:flutter/material.dart';

class FlorynColors {
  static PrimaryColors primaryColors = const PrimaryColors();
  static SecondaryColors secondaryColors = const SecondaryColors();
  static NeutralColors neutralColors = const NeutralColors();
}

class PrimaryColors {
  const PrimaryColors();

  Color get allergies => const Color(0xFFFCEB9A);
  Color get vitals => const Color(0xFFD6EEAA);
  Color get vaccines => const Color(0xFFF9C4C4);
  Color get milestones => const Color(0xFFD1C4E6);
  Color get mentalhealth => const Color(0xFFA8E6CE);
  Color get medications => const Color(0xFFF9D0A2);
  Color get healthrecords => const Color(0xFFC4D3E6);
  Color get nutrition => const Color(0xFFDCE2A0);
  Color get fitness => const Color(0xFFD7C1C8);
  Color get electivesurgeries => const Color(0xFFFFA488);
  Color get symptomchecker => const Color(0xFFBCC8FF);
  Color get talktopaediatrition => const Color(0xFFB2D0C4);

  // Shadows
  Color get talktopaediatritionShadow => const Color(0xFFA0BBB0);
  Color get symptomcheckerShadow => const Color(0xFFA9B4E6);
}

class SecondaryColors {
  const SecondaryColors();

  Color get red => const Color(0xFFFF6C6C);
  Color get green => const Color(0xFF2AC171);
  Color get brown => const Color(0xFFB95000);
  Color get yellow => const Color(0xFFFFB646);
}

class NeutralColors {
  const NeutralColors();
  Color get textwhite => const Color(0xFFFFFFFF);
  Color get background => const Color(0xFFF0F0F0);
  Color get textgreytip => const Color(0xFFA6A6A6);
  Color get textgrey => const Color(0xFF848484);
  Color get textblack => const Color(0xFF4D4D4D);
  Color get textblackdark => const Color(0xFF2B2B2B);
}

// on boarding
Color getBackgroundColor({int? currentIndex}) {
  switch (currentIndex) {
    case 0:
      return FlorynColors.primaryColors.symptomchecker;
    case 1:
      return FlorynColors.primaryColors.healthrecords;
    case 2:
      return FlorynColors.primaryColors.fitness;
    default:
      return FlorynColors.primaryColors.symptomchecker;
  }
}

// home screen
List<BoxShadow> cardBoxShadow(Color color) {
  return [
    BoxShadow(
        offset: const Offset(-1.0, -1.0),
        blurRadius: 2.0,
        spreadRadius: -2.0,
        color: color.withOpacity(0.5)),
    BoxShadow(
        offset: const Offset(5.0, 5.0),
        blurRadius: 10.0,
        color: color.withOpacity(0.9))
  ];
}
