import 'package:floryn/src/ui/shared/appBar.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/strings.dart';
import 'package:flutter/material.dart';

class SymptomCheckerView extends StatefulWidget {
  const SymptomCheckerView({Key? key}) : super(key: key);

  @override
  State<SymptomCheckerView> createState() => _SymptomCheckerViewState();
}

class _SymptomCheckerViewState extends State<SymptomCheckerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlorynColors.neutralColors.background,
      appBar: customAppBar(title: ConstantString.symptomChecker),
    );
  }
}
