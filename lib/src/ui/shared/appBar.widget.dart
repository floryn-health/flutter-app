import 'package:floryn/main.dart';
import 'package:floryn/src/data/service/routes.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

PreferredSizeWidget customAppBar(
    {required String title, bool centerTitle = false}) {
  return AppBar(
    backgroundColor: FlorynColors.neutralColors.background,
    elevation: 0.0,
    leading: IconButton(
        onPressed: () {
          clearDropdown();
          Modular.to.maybePop();
        },
        icon: Icon(
          Icons.arrow_back_ios_new,
          size: 20.0,
          color: FlorynColors.neutralColors.textblack,
        )),
    title: Text(
      title,
      style: FlorynTextStyles.h4(),
    ),
    centerTitle: centerTitle,
  );
}
