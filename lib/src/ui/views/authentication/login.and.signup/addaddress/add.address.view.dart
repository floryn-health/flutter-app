import 'package:floryn/src/data/enums.dart';
import 'package:floryn/src/data/service/routes.dart';
import 'package:floryn/src/ui/shared/neumorphic.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/styles.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AddAddressView extends StatefulWidget {
  const AddAddressView({Key? key}) : super(key: key);

  @override
  State<AddAddressView> createState() => _AddAddressViewState();
}

class _AddAddressViewState extends State<AddAddressView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlorynColors.neutralColors.background,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Address', style: FlorynTextStyles.h4())),
            ),
            const SizedBox(height: 40.0),
            Expanded(
                child: Column(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Neumorphic(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      style: CustomNeumorphicStyle.innerShadow(),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Address',
                          border: InputBorder.none,
                          hintStyle: FlorynTextStyles.m3(),
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
                          hintText: 'City',
                          border: InputBorder.none,
                          hintStyle: FlorynTextStyles.m3(),
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
                          hintText: 'State',
                          border: InputBorder.none,
                          hintStyle: FlorynTextStyles.m3(),
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
                          hintText: 'Country',
                          border: InputBorder.none,
                          hintStyle: FlorynTextStyles.m3(),
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
                          hintText: 'Pincode',
                          border: InputBorder.none,
                          hintStyle: FlorynTextStyles.m3(),
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Modular.to
                          .navigate(appRouteName(ScreenName.homescreen)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Skip',
                            style: FlorynTextStyles.m2(
                              fontColor: FlorynColors.neutralColors.textgrey,
                            ),
                          ),
                          SizedBox(
                            width: 30.0,
                            child: Divider(
                              thickness: 1.0,
                              height: 0.0,
                              color: FlorynColors.neutralColors.textgrey,
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Modular.to
                          .navigate(appRouteName(ScreenName.homescreen)),
                      child: Neumorphic(
                        style: CustomNeumorphicStyle.outerShadow(),
                        child: SizedBox(
                          height: 50.0,
                          width: 125.0,
                          child: Center(
                              child: Text(
                            'Add',
                            style: FlorynTextStyles.m2(),
                          )),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
