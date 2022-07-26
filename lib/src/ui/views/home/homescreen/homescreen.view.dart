import 'package:floryn/main.dart';
import 'package:floryn/src/data/service/routes.dart';
import 'package:floryn/src/ui/mixins/dialog.mixin.dart';
import 'package:floryn/src/ui/shared/neumorphic.widget.dart';
import 'package:floryn/src/ui/views/home/homescreen/homescreen.notifier.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/strings.dart';
import 'package:floryn/src/utils/styles.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> with DialogMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlorynColors.neutralColors.background,
      appBar: AppBar(
        backgroundColor: FlorynColors.neutralColors.background,
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          color: FlorynColors.neutralColors.textblack,
        ),
        title: GestureDetector(
          onTap: () => navigateAddChildDetails(),
          child: Text(
            'Home',
            style: FlorynTextStyles.h4(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => navigateNotifications(),
            icon: Icon(
              Icons.notifications,
              color: FlorynColors.neutralColors.textblack,
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.read<HomeScreenNotifier>().greetingMessage(),
                    style: FlorynTextStyles.m1(),
                  ),
                  Text(
                    'Parent',
                    style: FlorynTextStyles.h3(),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: () => show(context,
                  title: ConstantString.toAccessFeaturesSignUp, content: ''),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 48.0),
                      child: Neumorphic(
                          style: CustomNeumorphicStyle.outerShadow(),
                          child: const SizedBox(
                            height: 100.0,
                            width: 100.0,
                          )),
                    ),
                    Text(
                      ConstantString.noChildRegistered,
                      style: FlorynTextStyles.h4(),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      ConstantString.clickToAddChild,
                      style: FlorynTextStyles.m2(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ConstantString.mayBeYouLikeWithNoRegistration,
                    style: FlorynTextStyles.m2(),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Bounceable(
                        onTap: () => navigateSymptomChecker(),
                        child: Container(
                          height: 268,
                          width: deviceSize.width * 0.5 - 26.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: FlorynColors.primaryColors.symptomchecker,
                              boxShadow: cardBoxShadow(FlorynColors
                                  .primaryColors.symptomcheckerShadow)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 14.0, horizontal: 18.0),
                            child: Column(
                              children: [
                                Text(
                                  ConstantString.symptomChecker,
                                  style: FlorynTextStyles.m1(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => navigateTalkToPaediatrician(),
                        child: Container(
                          height: 268,
                          width: deviceSize.width * 0.5 - 26.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: FlorynColors
                                  .primaryColors.talktopaediatrition,
                              boxShadow: cardBoxShadow(FlorynColors
                                  .primaryColors.talktopaediatritionShadow)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 14.0, horizontal: 18.0),
                            child: Column(
                              children: [
                                Text(
                                  ConstantString.talkToPaediatrician,
                                  style: FlorynTextStyles.m1(),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
