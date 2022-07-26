import 'package:floryn/src/ui/shared/appBar.widget.dart';
import 'package:floryn/src/ui/shared/neumorphic.widget.dart';
import 'package:floryn/src/ui/shared/textfield.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/strings.dart';
import 'package:floryn/src/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AddChildDetailsView extends StatefulWidget {
  const AddChildDetailsView({Key? key}) : super(key: key);

  @override
  State<AddChildDetailsView> createState() => _AddChildDetailsViewState();
}

class _AddChildDetailsViewState extends State<AddChildDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlorynColors.neutralColors.background,
      appBar: customAppBar(title: ConstantString.childProfile),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SliverToBoxAdapter(
              child: Center(
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
            ),
            const SliverPadding(padding: EdgeInsets.all(20.0)),
            SliverToBoxAdapter(
              child: TextFieldWidget(hintText: ConstantString.firstName),
            ),
            SliverToBoxAdapter(
              child: TextFieldWidget(hintText: ConstantString.lastName),
            ),
            SliverToBoxAdapter(
              child: TextFieldWidget(
                hintText: ConstantString.gender,
                readOnly: true,
                suffixIcon: Icon(
                  Icons.arrow_drop_down,
                  color: FlorynColors.neutralColors.textgrey,
                  size: 28.0,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: TextFieldWidget(
                hintText: ConstantString.dob,
                readOnly: true,
                suffixIcon: Icon(
                  Icons.calendar_month,
                  color: FlorynColors.neutralColors.textgrey,
                  size: 28.0,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: TextFieldWidget(
                hintText: ConstantString.bloodGroup,
                readOnly: true,
                suffixIcon: Icon(
                  Icons.arrow_drop_down,
                  color: FlorynColors.neutralColors.textgrey,
                  size: 28.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
