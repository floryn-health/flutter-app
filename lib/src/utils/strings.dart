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

  // child profile
  static String get childProfile => 'Child Profile';
  static String get education => 'Education';
  static String get editProfile => 'Edit Profile';
  static String get childPhoto => 'Child Photo';
  static String get firstName => 'First Name';
  static String get lastName => 'Last Name';
  static String get dob => 'Date of Birth';
  static String get gender => 'Gender';
  static String get bloodGroup => 'Blood Group';

  // static lists
  static List<String> get genderList => ['Male', 'Female', 'Other'];
  static List<String> get bloodGroupList =>
      ['A+', 'A-', 'B+ ', 'B-', 'O+', 'O-', 'AB+', 'AB-'];
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
