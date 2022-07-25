import 'package:floryn/src/data/enums.dart';
import 'package:floryn/src/data/service/routes.dart';
import 'package:floryn/src/ui/shared/neumorphic.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationView extends StatefulWidget {
  const OtpVerificationView({Key? key}) : super(key: key);

  @override
  State<OtpVerificationView> createState() => _OtpVerificationViewState();
}

class _OtpVerificationViewState extends State<OtpVerificationView> {
  final otpTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlorynColors.neutralColors.background,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: FlorynColors.neutralColors.background,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: FlorynColors.neutralColors.textblack,
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child:
                      Text('OTP Verification', style: FlorynTextStyles.h4())),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text('OTP sent to example@gmail.com', style: FlorynTextStyles.m3()),
            const Spacer(),
            PinCodeTextField(
              appContext: context,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              pastedTextStyle: TextStyle(
                color: FlorynColors.primaryColors.mentalhealth,
                fontWeight: FontWeight.bold,
              ),
              length: 4,
              obscureText: false,
              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline,
                activeColor: FlorynColors.neutralColors.textblack,
                selectedColor: FlorynColors.neutralColors.textblack,
                inactiveColor: FlorynColors.neutralColors.textblack,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: FlorynColors.neutralColors.background,
              ),
              cursorColor: FlorynColors.neutralColors.textblack,
              animationDuration: const Duration(milliseconds: 300),
              enableActiveFill: false,
              controller: otpTextEditingController,
              keyboardType: TextInputType.number,
              onCompleted: (v) {
                debugPrint("Completed");
              },
              onChanged: (value) {
                debugPrint(value);
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Align(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Didn\'t recieve otp? ',
                        style: FlorynTextStyles.m3()),
                    TextSpan(text: 'Resend OTP', style: FlorynTextStyles.m3())
                  ])),
            ),
            const Spacer(),
            const Spacer(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () =>
                      Modular.to.pushNamed(appRouteName(ScreenName.addAddress)),
                  child: Neumorphic(
                    style: CustomNeumorphicStyle.outerShadow(),
                    child: SizedBox(
                      height: 50.0,
                      width: 125.0,
                      child: Center(
                          child: Text(
                        'Verify',
                        style: FlorynTextStyles.m2(),
                      )),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
