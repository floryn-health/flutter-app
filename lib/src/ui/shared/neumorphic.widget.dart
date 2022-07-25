import 'package:floryn/src/utils/colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomNeumorphicStyle {
  static NeumorphicStyle innerShadow({NeumorphicBoxShape? neumorphicBoxShape}) {
    return NeumorphicStyle(
        color: FlorynColors.neutralColors.background,
        depth: -5.0,
        intensity: 0.86,
        surfaceIntensity: 0.5,
        shape: NeumorphicShape.flat,
        lightSource: LightSource.topLeft,
        boxShape: neumorphicBoxShape,
        border: NeumorphicBorder(
          color: FlorynColors.neutralColors.background,
          width: 0,
        ));
  }

  static NeumorphicStyle outerShadow(
      {NeumorphicBoxShape? neumorphicBoxShape, Color? color}) {
    return NeumorphicStyle(
        color: color ?? FlorynColors.neutralColors.background,
        depth: 5.0,
        intensity: 0.86,
        surfaceIntensity: 0.5,
        shape: NeumorphicShape.flat,
        lightSource: LightSource.topLeft,
        boxShape: neumorphicBoxShape,
        border: NeumorphicBorder(
          color: color ?? FlorynColors.neutralColors.background,
          width: 0.8,
        ));
  }

  static Widget neumorphicOuterShadeTextWidget({Widget? child, Size? size}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: Neumorphic(
          style: CustomNeumorphicStyle.outerShadow(),
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14.0),
            height: size?.height,
            width: size?.width,
            child: child,
          )),
    );
  }

  static List<BoxShadow> boxShadow() {
    return [
      BoxShadow(
          color: FlorynColors.neutralColors.textwhite.withOpacity(0.3),
          offset: const Offset(1.0, 1.0),
          blurRadius: 2),
      BoxShadow(
          color: const Color(0xFFD8D8D8).withOpacity(0.5),
          offset: const Offset(-1.0, -1.0),
          blurRadius: 2),
      BoxShadow(
          color: const Color(0xFFD8D8D8).withOpacity(0.2),
          offset: const Offset(-5.0, -5.0),
          blurRadius: 10),
      BoxShadow(
          color: const Color(0xFFD8D8D8).withOpacity(0.2),
          offset: const Offset(5.0, -5.0),
          blurRadius: 10),
      BoxShadow(
          color: FlorynColors.neutralColors.textwhite.withOpacity(0.9),
          offset: const Offset(-5.0, -5.0),
          blurRadius: 10),
      BoxShadow(
          color: const Color(0xFFD8D8D8).withOpacity(0.9),
          offset: const Offset(5.0, 5.0),
          blurRadius: 13),
    ];
  }
}
