import 'package:floryn/src/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

mixin DialogMixin {
  Future<T?> show<T>(BuildContext context,
      {required String title,
      required String content,
      Map<String, VoidCallback>? actions,
      bool noAction = false,
      Color titleColor = const Color(0xFF4D4D4D),
      Color contentColor = const Color(0xFF848484)}) {
    final ThemeData themeData = Theme.of(context);
    if (themeData.platform == TargetPlatform.iOS) {
      return showCupertinoDialog<T>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            title: Text(title),
            titleTextStyle: FlorynTextStyles.m2(),
            content: Text(
              content,
              style: FlorynTextStyles.m3(),
            ),
            actions: [
              if (!noAction)
                if (actions != null)
                  for (MapEntry<String, VoidCallback> entry in actions.entries)
                    CupertinoDialogAction(
                        onPressed: entry.value, child: Text(entry.key))
                else
                  CupertinoDialogAction(
                      onPressed: () => Modular.to.maybePop(),
                      child: const Text('Sign Up'))
            ],
          );
        },
      );
    } else {
      return showDialog<T>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            title: Text(title),
            titleTextStyle: FlorynTextStyles.m2(),
            content: Text(
              content,
              style: FlorynTextStyles.m3(),
            ),
            actions: [
              if (!noAction)
                if (actions != null)
                  for (MapEntry<String, VoidCallback> entry in actions.entries)
                    TextButton(onPressed: entry.value, child: Text(entry.key))
                else
                  TextButton(
                      onPressed: () => Modular.to.maybePop(),
                      child: const Text('Sign Up'))
            ],
          );
        },
      );
    }
  }
}
