class ConstantString {
  // fontnames
  static String get fontName => 'Nunito Sans';

  // on boarding
  static String get symptomChecker => 'Symptom Checker';
  static String get secureYourMedicalData => 'Secure Your Medical Data';
  static String get childGrowthMonitor => 'Child Growth Monitor';

  // without registration
  static String get toAccessFeaturesSignUp => 'SignUp to access this feature';

  // home screen
  static String get noChildRegistered => 'No Child Registered';
  static String get clickToAddChild => 'Click To Add Child';
  static String get mayBeYouLikeWithNoRegistration =>
      'May Be You Like With No Registration';
  static String get talkToPaediatrician => 'Talk to Paediatrician';

  // notification
  static String get notifications => 'Notifications';
}

String onBoardingScreenHeading(int currentScreenIndex) {
  switch (currentScreenIndex) {
    case 0:
      return ConstantString.symptomChecker;
    case 1:
      return ConstantString.secureYourMedicalData;
    case 2:
      return ConstantString.childGrowthMonitor;
    default:
      return ConstantString.symptomChecker;
  }
}
