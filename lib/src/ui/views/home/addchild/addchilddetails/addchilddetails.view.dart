import 'package:floryn/main.dart';
import 'package:floryn/src/data/service/routes.dart';
import 'package:floryn/src/ui/shared/appBar.widget.dart';
import 'package:floryn/src/ui/shared/customdropdown.widget.dart';
import 'package:floryn/src/ui/shared/neumorphic.widget.dart';
import 'package:floryn/src/ui/shared/textfield.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/strings.dart';
import 'package:floryn/src/utils/styles.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

class AddChildDetailsView extends StatefulWidget {
  const AddChildDetailsView({Key? key}) : super(key: key);

  @override
  State<AddChildDetailsView> createState() => _AddChildDetailsViewState();
}

class _AddChildDetailsViewState extends State<AddChildDetailsView> {
  final genderTextEditingController = TextEditingController();
  final bloodGroupTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<CustomDropDownWidgetNotifier>(builder: (ctx, model, child) {
      return Scaffold(
        backgroundColor: FlorynColors.neutralColors.background,
        resizeToAvoidBottomInset: false,
        appBar: customAppBar(title: ConstantString.childProfile),
        body: SafeArea(
          child: GestureDetector(
            onTap: () => clearDropdown(),
            child: Container(
              color: FlorynColors.neutralColors.background,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Center(
                    child: Neumorphic(
                      style: CustomNeumorphicStyle.outerShadow(),
                      child: Container(
                          alignment: Alignment.center,
                          height: 100.0,
                          width: 100.0,
                          child: Text(
                            ConstantString.childPhoto,
                            style: FlorynTextStyles.s2(
                                fontWeight: FontWeight.w500,
                                fontColor: FlorynColors.neutralColors.textgrey),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFieldWidget(hintText: ConstantString.firstName),
                  TextFieldWidget(hintText: ConstantString.lastName),
                  CustomDropDownWidget(
                      value: ConstantString.gender,
                      textEditingController: genderTextEditingController,
                      dropdownList: ConstantString.genderList),
                  TextFieldWidget(
                    hintText: ConstantString.dob,
                    readOnly: true,
                    suffixIcon: Icon(
                      Icons.calendar_month,
                      color: FlorynColors.neutralColors.textgrey,
                      size: 28.0,
                    ),
                  ),
                  CustomDropDownWidget(
                      value: ConstantString.bloodGroup,
                      textEditingController: bloodGroupTextEditingController,
                      dropdownList: ConstantString.bloodGroupList),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      // onTap: () =>
                      //     Modular.to.pushNamed(appRouteName(ScreenName.homescreen)),
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
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
