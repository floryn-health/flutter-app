import 'package:floryn/src/data/enums.dart';
import 'package:floryn/src/data/service/routes.dart';
import 'package:floryn/src/ui/shared/neumorphic.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/styles.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LoginAndSignupView extends StatefulWidget {
  const LoginAndSignupView({Key? key}) : super(key: key);

  @override
  State<LoginAndSignupView> createState() => _LoginAndSignupViewState();
}

class _LoginAndSignupViewState extends State<LoginAndSignupView> {
  bool isLoginView = true;
  bool checkedValue = true;

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
      backgroundColor: FlorynColors.neutralColors.background,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () => updateWidgetView(fromLogin: true),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'LogIn',
                            style: isLoginView
                                ? FlorynTextStyles.h4()
                                : FlorynTextStyles.h4(
                                    fontColor:
                                        FlorynColors.neutralColors.textgrey),
                          ),
                          Container(
                            height: 1.5,
                            width: 50.0,
                            color: isLoginView
                                ? FlorynColors.neutralColors.textblack
                                : Colors.transparent,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 14.0),
                    GestureDetector(
                      onTap: () => updateWidgetView(fromLogin: false),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'SignUp',
                            style: !isLoginView
                                ? FlorynTextStyles.h4()
                                : FlorynTextStyles.h4(
                                    fontColor:
                                        FlorynColors.neutralColors.textgrey),
                          ),
                          Container(
                            height: 1.5,
                            width: 60.0,
                            color: !isLoginView
                                ? FlorynColors.neutralColors.textblack
                                : Colors.transparent,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              if (isLoginView)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome,',
                        style: FlorynTextStyles.h1(),
                      ),
                      const Spacer(),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Neumorphic(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            style: CustomNeumorphicStyle.innerShadow(),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: InputBorder.none,
                                  hintStyle: FlorynTextStyles.m3(
                                      fontColor:
                                          FlorynColors.neutralColors.textgrey)),
                            ),
                          ),
                          const SizedBox(
                            height: 14.0,
                          ),
                          Neumorphic(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            style: CustomNeumorphicStyle.innerShadow(),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: InputBorder.none,
                                hintStyle: FlorynTextStyles.m3(
                                    fontColor:
                                        FlorynColors.neutralColors.textgrey),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () => Modular.to.pushNamed(
                              appRouteName(ScreenName.forgotPassword)),
                          child: Text(
                            'Forgot Password?',
                            style: FlorynTextStyles.m3(
                              fontColor: FlorynColors.neutralColors.textgrey,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Neumorphic(
                            style: CustomNeumorphicStyle.outerShadow(
                                neumorphicBoxShape:
                                    const NeumorphicBoxShape.circle()),
                            child: Container(
                              height: 45.0,
                              width: 45.0,
                              padding: const EdgeInsets.all(6.0),
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child:
                                  Image.asset('assets/images/google-logo.png'),
                            ),
                          ),
                          const SizedBox(width: 14.0),
                          Neumorphic(
                            style: CustomNeumorphicStyle.outerShadow(
                                neumorphicBoxShape:
                                    const NeumorphicBoxShape.circle()),
                            child: Container(
                              height: 45.0,
                              width: 45.0,
                              padding: const EdgeInsets.all(4.0),
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child:
                                  Image.asset('assets/images/twitter-logo.png'),
                            ),
                          ),
                          const SizedBox(width: 14.0),
                          Neumorphic(
                            style: CustomNeumorphicStyle.outerShadow(
                                neumorphicBoxShape:
                                    const NeumorphicBoxShape.circle()),
                            child: Container(
                              height: 45.0,
                              width: 45.0,
                              padding: const EdgeInsets.all(6.0),
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(
                                  'assets/images/facebook-logo.png'),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      const SizedBox(height: 10.0),
                      const Spacer(),
                      if (isLoginView)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Modular.to.pushNamed(
                                  appRouteName(ScreenName.homescreen)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Skip',
                                    style: FlorynTextStyles.m2(
                                      fontColor:
                                          FlorynColors.neutralColors.textgrey,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                    child: Divider(
                                      thickness: 1.0,
                                      height: 0.0,
                                      color:
                                          FlorynColors.neutralColors.textgrey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Modular.to.pushNamed(
                                  appRouteName(ScreenName.homescreen)),
                              child: Neumorphic(
                                style: CustomNeumorphicStyle.outerShadow(),
                                child: SizedBox(
                                  height: 50.0,
                                  width: 125.0,
                                  child: Center(
                                      child: Text(
                                    'Log In',
                                    style: FlorynTextStyles.m2(),
                                  )),
                                ),
                              ),
                            )
                          ],
                        ),
                    ],
                  ),
                ),
              if (!isLoginView)
                Expanded(
                    child: Column(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Neumorphic(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          style: CustomNeumorphicStyle.innerShadow(),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Full Name',
                              border: InputBorder.none,
                              hintStyle: FlorynTextStyles.m3(
                                  fontColor:
                                      FlorynColors.neutralColors.textgrey),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14.0,
                        ),
                        Neumorphic(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          style: CustomNeumorphicStyle.innerShadow(),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              border: InputBorder.none,
                              hintStyle: FlorynTextStyles.m3(
                                  fontColor:
                                      FlorynColors.neutralColors.textgrey),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14.0,
                        ),
                        Neumorphic(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          style: CustomNeumorphicStyle.innerShadow(),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Phone',
                              border: InputBorder.none,
                              hintStyle: FlorynTextStyles.m3(
                                  fontColor:
                                      FlorynColors.neutralColors.textgrey),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14.0,
                        ),
                        Neumorphic(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          style: CustomNeumorphicStyle.innerShadow(),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                              hintStyle: FlorynTextStyles.m3(
                                  fontColor:
                                      FlorynColors.neutralColors.textgrey),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14.0,
                        ),
                        Neumorphic(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          style: CustomNeumorphicStyle.innerShadow(),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              border: InputBorder.none,
                              hintStyle: FlorynTextStyles.m3(
                                  fontColor:
                                      FlorynColors.neutralColors.textgrey),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Neumorphic(
                            style: CustomNeumorphicStyle.innerShadow(),
                            child: SizedBox(
                              height: 20.0,
                              width: 20.0,
                              child: Checkbox(
                                  value: checkedValue,
                                  activeColor:
                                      FlorynColors.primaryColors.mentalhealth,
                                  side: MaterialStateBorderSide.resolveWith(
                                    (states) => const BorderSide(
                                        width: 1.0, color: Colors.transparent),
                                  ),
                                  onChanged: (v) {
                                    setState(() {
                                      checkedValue = v ?? false;
                                    });
                                  }),
                            ),
                          ),
                          Text(
                            '  I agree to the Terms of Use and Privacy Policy',
                            style: FlorynTextStyles.s1(
                                fontColor: FlorynColors.neutralColors.textgrey),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Neumorphic(
                          style: CustomNeumorphicStyle.outerShadow(
                              neumorphicBoxShape:
                                  const NeumorphicBoxShape.circle()),
                          child: Container(
                            height: 45.0,
                            width: 45.0,
                            padding: const EdgeInsets.all(6.0),
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset('assets/images/google-logo.png'),
                          ),
                        ),
                        const SizedBox(width: 14.0),
                        Neumorphic(
                          style: CustomNeumorphicStyle.outerShadow(
                              neumorphicBoxShape:
                                  const NeumorphicBoxShape.circle()),
                          child: Container(
                            height: 45.0,
                            width: 45.0,
                            padding: const EdgeInsets.all(4.0),
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child:
                                Image.asset('assets/images/twitter-logo.png'),
                          ),
                        ),
                        const SizedBox(width: 14.0),
                        Neumorphic(
                          style: CustomNeumorphicStyle.outerShadow(
                              neumorphicBoxShape:
                                  const NeumorphicBoxShape.circle()),
                          child: Container(
                            height: 45.0,
                            width: 45.0,
                            padding: const EdgeInsets.all(6.0),
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child:
                                Image.asset('assets/images/facebook-logo.png'),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () => Modular.to.pushNamed(
                            appRouteName(ScreenName.otpVerification)),
                        child: Neumorphic(
                          style: CustomNeumorphicStyle.outerShadow(),
                          child: SizedBox(
                            height: 50.0,
                            width: 125.0,
                            child: Center(
                                child: Text(
                              'Sign Up',
                              style: FlorynTextStyles.m2(),
                            )),
                          ),
                        ),
                      ),
                    )
                  ],
                ))
            ],
          ),
        ),
      ),
    );
  }
}
