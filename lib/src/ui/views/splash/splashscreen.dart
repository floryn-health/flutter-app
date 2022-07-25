import 'dart:async';
import 'package:floryn/main.dart';
import 'package:floryn/src/data/enums.dart';
import 'package:floryn/src/data/service/routes.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    timer = Timer(const Duration(seconds: 2),
        () => Modular.to.navigate(appRouteName(ScreenName.onBoarding)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: FlorynColors.neutralColors.background,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: 160,
        ),
      ),
    );
  }
}
