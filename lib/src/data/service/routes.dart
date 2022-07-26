import 'package:floryn/src/data/enums.dart';
import 'package:floryn/src/ui/views/authentication/forgot.password/forgot.password.view.dart';
import 'package:floryn/src/ui/views/authentication/forgot.password/reset.password/reset.password.view.dart';
import 'package:floryn/src/ui/views/authentication/login.and.signup/addaddress/add.address.view.dart';
import 'package:floryn/src/ui/views/authentication/login.and.signup/loginandsignup.view.dart';
import 'package:floryn/src/ui/views/authentication/otp.verification/otp.verification.view.dart';
import 'package:floryn/src/ui/views/home/addchild/addchilddetails/addchilddetails.view.dart';
import 'package:floryn/src/ui/views/home/addchild/addchildeducation/addchildeducation.view.dart';
import 'package:floryn/src/ui/views/home/homescreen/homescreen.view.dart';
import 'package:floryn/src/ui/views/home/notification/notification.view.dart';
import 'package:floryn/src/ui/views/home/symptomchecker/symptomchecker.view.dart';
import 'package:floryn/src/ui/views/home/talktopaediatrician/talktopaediatrician.view.dart';
import 'package:floryn/src/ui/views/onboarding/onboarding.view.dart';
import 'package:floryn/src/ui/views/splash/splashscreen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: ((context, args) => const SplashScreen())),
    ChildRoute('/onBoarding', child: (context, args) => const OnBoardingView()),
    ChildRoute('/loginAndSignup',
        child: (context, args) => const LoginAndSignupView()),
    ChildRoute('/otpVerification',
        child: (context, args) => const OtpVerificationView(),
        transition: TransitionType.rightToLeft),
    ChildRoute('/addAddress',
        child: (context, args) => const AddAddressView(),
        transition: TransitionType.rightToLeft),
    ChildRoute('/forgotPassword',
        child: (context, args) => const ForgotPasswordView(),
        transition: TransitionType.rightToLeft),
    ChildRoute('/resetPassword',
        child: (context, args) => const ResetPasswordView(),
        transition: TransitionType.rightToLeft),
    ChildRoute('/homescreen',
        child: (context, args) => const HomeScreenView(),
        transition: TransitionType.fadeIn),
    ChildRoute('/symptomChecker',
        child: (context, args) => const SymptomCheckerView(),
        transition: TransitionType.rightToLeftWithFade),
    ChildRoute('/talkToPaediatrician',
        child: (context, args) => const TalkToPaediatrician(),
        transition: TransitionType.rightToLeftWithFade),
    ChildRoute('/notifications',
        child: (context, args) => const NotificationView(),
        transition: TransitionType.rightToLeftWithFade),
    ChildRoute('/addChildDetails',
        child: (context, args) => const AddChildDetailsView(),
        transition: TransitionType.rightToLeftWithFade),
    ChildRoute('/addChildEducation',
        child: (context, args) => const AddChildEducationView(),
        transition: TransitionType.rightToLeftWithFade)
  ];
}

String appRouteName(ScreenName screenName) {
  return screenName.toString().replaceAll(RegExp('ScreenName.'), '');
}

navigateSymptomChecker() {
  Modular.to.pushNamed(appRouteName(ScreenName.symptomChecker));
}

navigateTalkToPaediatrician() {
  Modular.to.pushNamed(appRouteName(ScreenName.talkToPaediatrician));
}

navigateNotifications() {
  Modular.to.pushNamed(appRouteName(ScreenName.notifications));
}

navigateAddChildDetails() {
  Modular.to.pushNamed(appRouteName(ScreenName.addChildDetails));
}

navigateAddChildEducation() {
  Modular.to.pushNamed(appRouteName(ScreenName.addChildEducation));
}
