import 'package:floryn/src/ui/shared/appBar.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/strings.dart';
import 'package:flutter/material.dart';

class TalkToPaediatrician extends StatefulWidget {
  const TalkToPaediatrician({Key? key}) : super(key: key);

  @override
  State<TalkToPaediatrician> createState() => _TalkToPaediatricianState();
}

class _TalkToPaediatricianState extends State<TalkToPaediatrician> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlorynColors.neutralColors.background,
      appBar: customAppBar(title: ConstantString.talkToPaediatrician),
    );
  }
}
