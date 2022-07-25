import 'package:floryn/src/ui/shared/appBar.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/strings.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlorynColors.neutralColors.background,
      appBar: customAppBar(title: ConstantString.notifications),
    );
  }
}
