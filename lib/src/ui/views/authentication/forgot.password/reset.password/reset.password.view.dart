import 'package:floryn/src/data/enums.dart';
import 'package:floryn/src/data/service/routes.dart';
import 'package:floryn/src/ui/shared/neumorphic.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/styles.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Reset password', style: FlorynTextStyles.h4())),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const SizedBox(
              height: 40.0,
            ),
            Neumorphic(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              style: CustomNeumorphicStyle.innerShadow(),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'New Password',
                  border: InputBorder.none,
                  hintStyle: FlorynTextStyles.m2(),
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
                  hintStyle: FlorynTextStyles.m2(),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => Modular.to
                      .navigate(appRouteName(ScreenName.loginAndSignup)),
                  child: Neumorphic(
                    style: CustomNeumorphicStyle.outerShadow(),
                    child: SizedBox(
                      height: 50.0,
                      width: 125.0,
                      child: Icon(
                        Icons.arrow_forward,
                        color: FlorynColors.neutralColors.textblack,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
