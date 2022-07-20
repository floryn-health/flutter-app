import 'package:floryn/src/data/enums.dart';
import 'package:floryn/src/ui/authentication/loginandsignup.view.dart';
import 'package:floryn/src/ui/onboarding/onboarding.view.dart';
import 'package:floryn/src/ui/splash/splashscreen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: ((context, args) => const SplashScreen())),
    ChildRoute('/onboarding', child: (context, args) => const OnBoardingView()),
    ChildRoute('/loginandsignup',
        child: (context, args) => const LoginAndSignupView())
  ];
}

String appRouteName(ScreenName screenName) {
  return screenName.toString().replaceAll(RegExp('ScreenName.'), '');
}
