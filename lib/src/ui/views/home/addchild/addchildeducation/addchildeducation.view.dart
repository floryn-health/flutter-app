import 'package:floryn/src/ui/shared/appBar.widget.dart';
import 'package:floryn/src/utils/strings.dart';
import 'package:flutter/material.dart';

class AddChildEducationView extends StatefulWidget {
  const AddChildEducationView({Key? key}) : super(key: key);

  @override
  State<AddChildEducationView> createState() => _AddChildEducationViewState();
}

class _AddChildEducationViewState extends State<AddChildEducationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: ConstantString.education),
    );
  }
}
