import 'package:floryn/src/utils/colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LoginAndSignupView extends StatefulWidget {
  const LoginAndSignupView({Key? key}) : super(key: key);

  @override
  State<LoginAndSignupView> createState() => _LoginAndSignupViewState();
}

class _LoginAndSignupViewState extends State<LoginAndSignupView> {
  bool isLoginView = true;

  void updateWidgetView({required bool fromLogin}) {
    if (fromLogin) {
      setState(() {
        isLoginView = true;
      });
    } else {
      setState(() {
        isLoginView = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlorynColors.secondaryColors.background,
      resizeToAvoidBottomInset: false,
      // body: SafeArea(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 40.0),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         SizedBox(
      //           height: MediaQuery.of(context).size.height * 0.15,
      //           child: Row(
      //             crossAxisAlignment: CrossAxisAlignment.end,
      //             children: [
      //               GestureDetector(
      //                 onTap: () => updateWidgetView(fromLogin: true),
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   children: [
      //                     Text(
      //                       'LogIn',
      //                       style: isLoginView
      //                           ? TextStyle(
      //                               fontFamily: fontName,
      //                               color: AppColors.kTextColor,
      //                               fontSize: 20.0,
      //                             )
      //                           : TextStyle(
      //                               fontFamily: fontName,
      //                               color: AppColors.kTextColorSecondary,
      //                               fontSize: 18.0,
      //                             ),
      //                     ),
      //                     Container(
      //                       height: 1.5,
      //                       width: 50.0,
      //                       color: isLoginView
      //                           ? AppColors.kTextColor
      //                           : Colors.transparent,
      //                     )
      //                   ],
      //                 ),
      //               ),
      //               const SizedBox(width: 14.0),
      //               GestureDetector(
      //                 onTap: () => updateWidgetView(fromLogin: false),
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   children: [
      //                     Text(
      //                       'SignUp',
      //                       style: !isLoginView
      //                           ? TextStyle(
      //                               fontFamily: fontName,
      //                               color: AppColors.kTextColor,
      //                               fontSize: 20.0,
      //                             )
      //                           : TextStyle(
      //                               fontFamily: fontName,
      //                               color: AppColors.kTextColorSecondary,
      //                               fontSize: 18.0,
      //                             ),
      //                     ),
      //                     Container(
      //                       height: 1.5,
      //                       width: 60.0,
      //                       color: !isLoginView
      //                           ? AppColors.kTextColor
      //                           : Colors.transparent,
      //                     )
      //                   ],
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 40.0,
      //         ),
      //         if (isLoginView)
      //           Expanded(
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   'Welcome,',
      //                   style: TextStyle(
      //                       color: AppColors.kTextColor,
      //                       fontSize: 30.0,
      //                       fontFamily: fontName,
      //                       fontWeight: FontWeight.w600),
      //                 ),
      //                 const Spacer(),
      //                 Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   children: [
      //                     Neumorphic(
      //                       padding:
      //                           const EdgeInsets.symmetric(horizontal: 14.0),
      //                       style: CustomNeumorphicStyle.innerShadow(),
      //                       child: TextFormField(
      //                         decoration: InputDecoration(
      //                           hintText: 'Email',
      //                           border: InputBorder.none,
      //                           hintStyle: TextStyle(
      //                             fontFamily: fontName,
      //                             color: AppColors.kTextColorSecondary,
      //                             fontSize: 14.0,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                     const SizedBox(
      //                       height: 14.0,
      //                     ),
      //                     Neumorphic(
      //                       padding:
      //                           const EdgeInsets.symmetric(horizontal: 14.0),
      //                       style: CustomNeumorphicStyle.innerShadow(),
      //                       child: TextFormField(
      //                         decoration: InputDecoration(
      //                           hintText: 'Password',
      //                           border: InputBorder.none,
      //                           hintStyle: TextStyle(
      //                             fontFamily: fontName,
      //                             color: AppColors.kTextColorSecondary,
      //                             fontSize: 14.0,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 const Spacer(),
      //                 Row(
      //                   children: [
      //                     Neumorphic(
      //                       style: CustomNeumorphicStyle.outerShadow(
      //                           neumorphicBoxShape:
      //                               const NeumorphicBoxShape.circle()),
      //                       child: Container(
      //                         height: 45.0,
      //                         width: 45.0,
      //                         padding: const EdgeInsets.all(6.0),
      //                         decoration:
      //                             const BoxDecoration(shape: BoxShape.circle),
      //                         child:
      //                             Image.asset('assets/images/google-logo.png'),
      //                       ),
      //                     ),
      //                     const SizedBox(width: 14.0),
      //                     Neumorphic(
      //                       style: CustomNeumorphicStyle.outerShadow(
      //                           neumorphicBoxShape:
      //                               const NeumorphicBoxShape.circle()),
      //                       child: Container(
      //                         height: 45.0,
      //                         width: 45.0,
      //                         padding: const EdgeInsets.all(4.0),
      //                         decoration:
      //                             const BoxDecoration(shape: BoxShape.circle),
      //                         child:
      //                             Image.asset('assets/images/twitter-logo.png'),
      //                       ),
      //                     ),
      //                     const SizedBox(width: 14.0),
      //                     Neumorphic(
      //                       style: CustomNeumorphicStyle.outerShadow(
      //                           neumorphicBoxShape:
      //                               const NeumorphicBoxShape.circle()),
      //                       child: Container(
      //                         height: 45.0,
      //                         width: 45.0,
      //                         padding: const EdgeInsets.all(6.0),
      //                         decoration:
      //                             const BoxDecoration(shape: BoxShape.circle),
      //                         child: Image.asset(
      //                             'assets/images/facebook-logo.png'),
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //                 const Spacer(),
      //                 const SizedBox(height: 10.0),
      //                 const Spacer(),
      //                 if (isLoginView)
      //                   Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       GestureDetector(
      //                         onTap: () => Navigator.push(
      //                             context,
      //                             MaterialPageRoute(
      //                                 builder: (context) =>
      //                                     ForgotPasswordView())),
      //                         child: Text(
      //                           'Forgot Password?',
      //                           style: TextStyle(
      //                             fontSize: 14.0,
      //                             color: AppColors.kTextColorSecondary,
      //                             fontFamily: fontName,
      //                           ),
      //                         ),
      //                       ),
      //                       GestureDetector(
      //                         onTap: () => Navigator.push(
      //                             context,
      //                             MaterialPageRoute(
      //                                 builder: (context) =>
      //                                     const OtpVerificationView())),
      //                         child: Neumorphic(
      //                           style: CustomNeumorphicStyle.outerShadow(),
      //                           child: SizedBox(
      //                             height: 45.0,
      //                             width: 100.0,
      //                             child: Icon(
      //                               Icons.arrow_forward,
      //                               color: AppColors.kTextColor,
      //                             ),
      //                           ),
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //               ],
      //             ),
      //           ),
      //         if (!isLoginView)
      //           Expanded(
      //               child: Column(
      //             children: [
      //               Column(
      //                 mainAxisSize: MainAxisSize.min,
      //                 children: [
      //                   Neumorphic(
      //                     padding: const EdgeInsets.symmetric(horizontal: 14.0),
      //                     style: CustomNeumorphicStyle.innerShadow(),
      //                     child: TextFormField(
      //                       decoration: InputDecoration(
      //                         hintText: 'Full Name',
      //                         border: InputBorder.none,
      //                         hintStyle: TextStyle(
      //                           fontFamily: fontName,
      //                           color: AppColors.kTextColorSecondary,
      //                           fontSize: 14.0,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                   const SizedBox(
      //                     height: 14.0,
      //                   ),
      //                   Neumorphic(
      //                     padding: const EdgeInsets.symmetric(horizontal: 14.0),
      //                     style: CustomNeumorphicStyle.innerShadow(),
      //                     child: TextFormField(
      //                       decoration: InputDecoration(
      //                         hintText: 'Email',
      //                         border: InputBorder.none,
      //                         hintStyle: TextStyle(
      //                           fontFamily: fontName,
      //                           color: AppColors.kTextColorSecondary,
      //                           fontSize: 14.0,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                   const SizedBox(
      //                     height: 14.0,
      //                   ),
      //                   Neumorphic(
      //                     padding: const EdgeInsets.symmetric(horizontal: 14.0),
      //                     style: CustomNeumorphicStyle.innerShadow(),
      //                     child: TextFormField(
      //                       decoration: InputDecoration(
      //                         hintText: 'Phone',
      //                         border: InputBorder.none,
      //                         hintStyle: TextStyle(
      //                           fontFamily: fontName,
      //                           color: AppColors.kTextColorSecondary,
      //                           fontSize: 14.0,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                   const SizedBox(
      //                     height: 14.0,
      //                   ),
      //                   Neumorphic(
      //                     padding: const EdgeInsets.symmetric(horizontal: 14.0),
      //                     style: CustomNeumorphicStyle.innerShadow(),
      //                     child: TextFormField(
      //                       decoration: InputDecoration(
      //                         hintText: 'Password',
      //                         border: InputBorder.none,
      //                         hintStyle: TextStyle(
      //                           fontFamily: fontName,
      //                           color: AppColors.kTextColorSecondary,
      //                           fontSize: 14.0,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                   const SizedBox(
      //                     height: 14.0,
      //                   ),
      //                   Neumorphic(
      //                     padding: const EdgeInsets.symmetric(horizontal: 14.0),
      //                     style: CustomNeumorphicStyle.innerShadow(),
      //                     child: TextFormField(
      //                       decoration: InputDecoration(
      //                         hintText: 'Confirm Password',
      //                         border: InputBorder.none,
      //                         hintStyle: TextStyle(
      //                           fontFamily: fontName,
      //                           color: AppColors.kTextColorSecondary,
      //                           fontSize: 14.0,
      //                         ),
      //                       ),
      //                     ),
      //                   )
      //                 ],
      //               ),
      //               const SizedBox(
      //                 height: 20.0,
      //               ),
      //               Text(
      //                 'I agree to the Terms of Use and Privacy Policy',
      //                 style: TextStyle(
      //                   fontFamily: fontName,
      //                   fontSize: 12.0,
      //                   color: AppColors.kTextColorSecondary,
      //                 ),
      //               ),
      //               const Spacer(),
      //               Row(
      //                 children: [
      //                   Neumorphic(
      //                     style: CustomNeumorphicStyle.outerShadow(
      //                         neumorphicBoxShape:
      //                             const NeumorphicBoxShape.circle()),
      //                     child: Container(
      //                       height: 45.0,
      //                       width: 45.0,
      //                       padding: const EdgeInsets.all(6.0),
      //                       decoration:
      //                           const BoxDecoration(shape: BoxShape.circle),
      //                       child: Image.asset('assets/images/google-logo.png'),
      //                     ),
      //                   ),
      //                   const SizedBox(width: 14.0),
      //                   Neumorphic(
      //                     style: CustomNeumorphicStyle.outerShadow(
      //                         neumorphicBoxShape:
      //                             const NeumorphicBoxShape.circle()),
      //                     child: Container(
      //                       height: 45.0,
      //                       width: 45.0,
      //                       padding: const EdgeInsets.all(4.0),
      //                       decoration:
      //                           const BoxDecoration(shape: BoxShape.circle),
      //                       child:
      //                           Image.asset('assets/images/twitter-logo.png'),
      //                     ),
      //                   ),
      //                   const SizedBox(width: 14.0),
      //                   Neumorphic(
      //                     style: CustomNeumorphicStyle.outerShadow(
      //                         neumorphicBoxShape:
      //                             const NeumorphicBoxShape.circle()),
      //                     child: Container(
      //                       height: 45.0,
      //                       width: 45.0,
      //                       padding: const EdgeInsets.all(6.0),
      //                       decoration:
      //                           const BoxDecoration(shape: BoxShape.circle),
      //                       child:
      //                           Image.asset('assets/images/facebook-logo.png'),
      //                     ),
      //                   )
      //                 ],
      //               ),
      //               const Spacer(),
      //               Align(
      //                 alignment: Alignment.centerRight,
      //                 child: Neumorphic(
      //                   style: CustomNeumorphicStyle.outerShadow(),
      //                   child: SizedBox(
      //                     height: 45.0,
      //                     width: 100.0,
      //                     child: Icon(
      //                       Icons.arrow_forward,
      //                       color: AppColors.kTextColor,
      //                     ),
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ))
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
