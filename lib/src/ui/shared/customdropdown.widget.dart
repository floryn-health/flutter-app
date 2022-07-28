import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:floryn/main.dart';
import 'package:floryn/src/ui/shared/neumorphic.widget.dart';
import 'package:floryn/src/ui/shared/textfield.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/styles.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:stacked/stacked.dart';

class CustomDropDownWidget extends StatefulWidget {
  final String value;
  final TextEditingController textEditingController;
  final List dropdownList;
  const CustomDropDownWidget(
      {Key? key,
      required this.value,
      required this.dropdownList,
      required this.textEditingController})
      : super(key: key);

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CustomDropDownWidgetNotifier>.reactive(
      onModelReady: (model) =>
          model.getWidgetPosition(widget.value, widget.textEditingController),
      viewModelBuilder: () => CustomDropDownWidgetNotifier(),
      builder: (context, model, child) => Column(
        children: [
          TextFieldWidget(
            actionKey: model.actionKey,
            hintText: widget.value,
            readOnly: true,
            textEditingController: widget.textEditingController,
            suffixIcon: Icon(
              Icons.arrow_drop_down,
              color: FlorynColors.neutralColors.textgrey,
              size: 28.0,
            ),
            onTap: () => model.dropdownAction(context, widget.dropdownList),
          )
        ],
      ),
    );
  }
}

class CustomDropDownWidgetNotifier with ChangeNotifier {
  late TextEditingController textEditingController;
  late GlobalKey actionKey;
  late double height, width, xPosition, yPosition;

  void getWidgetPosition(String value, TextEditingController controller) {
    actionKey = LabeledGlobalKey(value);
    textEditingController = controller;
    notifyListeners();
  }

  void findDropdownData() {
    RenderBox renderBox =
        actionKey.currentContext!.findRenderObject() as RenderBox;
    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    notifyListeners();
  }

  void dropdownAction(BuildContext context, dropdownList) {
    if (isDropdownOpened) {
      floatingDropdown?.remove();
    } else {
      findDropdownData();
      floatingDropdown = createFloatingDropdown(dropdownList);
      Overlay.of(context)?.insert(floatingDropdown!);
    }

    isDropdownOpened = !isDropdownOpened;
    notifyListeners();
  }

  void closeDropdown() {
    if (isDropdownOpened) {
      floatingDropdown!.remove();
      isDropdownOpened = !isDropdownOpened;
      notifyListeners();
    }
  }

  OverlayEntry createFloatingDropdown(List dropdownList) {
    return OverlayEntry(builder: (context) {
      return Positioned(
          left: xPosition,
          width: width,
          top: yPosition + height,
          height:
              dropdownList.length > 5 ? 210.0 : dropdownList.length * 50 + 10.0,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Neumorphic(
              style: CustomNeumorphicStyle.outerShadow(),
              child: Container(
                color: FlorynColors.neutralColors.background,
                child: ListView.builder(
                    physics: dropdownList.length > 5
                        ? null
                        : const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: dropdownList.length,
                    itemBuilder: ((context, index) => GestureDetector(
                          onTap: () {
                            floatingDropdown?.remove();
                            textEditingController.text = dropdownList[index];
                            isDropdownOpened = !isDropdownOpened;
                          },
                          child: Container(
                            color: FlorynColors.neutralColors.background,
                            height: 50.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14.0),
                                  child: Text(
                                    dropdownList[index],
                                    style: FlorynTextStyles.m2(),
                                  ),
                                ),
                                const Spacer(),
                                if (index != dropdownList.length - 1)
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlorynColors.neutralColors.textgrey,
                                    ),
                                  )
                              ],
                            ),
                          ),
                        ))),
              ),
            ),
          ));
    });
  }
}
