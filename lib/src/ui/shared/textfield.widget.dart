import 'package:floryn/src/ui/shared/neumorphic.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/styles.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final Widget? suffixIcon;
  final Function()? onTap;
  final bool readOnly;
  const TextFieldWidget(
      {Key? key,
      this.textEditingController,
      this.hintText,
      this.suffixIcon,
      this.onTap,
      this.readOnly = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: Neumorphic(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        style: CustomNeumorphicStyle.innerShadow(),
        child: TextFormField(
          onTap: onTap,
          controller: textEditingController,
          readOnly: readOnly,
          decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: FlorynTextStyles.m3(
                  fontColor: FlorynColors.neutralColors.textgrey),
              suffixIcon: suffixIcon),
        ),
      ),
    );
  }
}
