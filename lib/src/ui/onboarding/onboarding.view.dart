import 'package:clay_containers/widgets/clay_container.dart';
import 'package:floryn/main.dart';
import 'package:floryn/src/data/enums.dart';
import 'package:floryn/src/data/service/routes.dart';
import 'package:floryn/src/ui/widgets/neumorphic.widget.dart';
import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/strings.dart';
import 'package:floryn/src/utils/styles.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentIndex = 0;

  void nextBoardingScreen() {
    if (currentIndex < 2) {
      setState(() {
        currentIndex++;
      });
    } else if (currentIndex == 2) {
      Modular.to.navigate(appRouteName(ScreenName.loginandsignup));
    }
  }

  void previousBoardingScreen() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getBackgroundColor(currentIndex: currentIndex),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: getBackgroundColor(currentIndex: currentIndex),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: currentIndex == 2
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceBetween,
            children: [
              if (currentIndex < 2)
                GestureDetector(
                  onTap: () => Modular.to
                      .navigate(appRouteName(ScreenName.loginandsignup)),
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
                onTap: () => nextBoardingScreen(),
                child: ClayContainer(
                    color: getBackgroundColor(currentIndex: currentIndex),
                    height: 50.0,
                    width: 160,
                    borderRadius: 10,
                    depth: 12,
                    spread: 10,
                    emboss: false,
                    child: Center(child: Text('Next'))),
              )
              // GestureDetector(
              //   onTap: () => nextBoardingScreen(),
              //   child: Neumorphic(
              //     style: const NeumorphicStyle(
              //         boxShape: NeumorphicBoxShape.circle(),
              //         depth: -5,
              //         shape: NeumorphicShape.concave),
              //     child: Container(
              //       height: deviceSize.width * 0.16,
              //       width: deviceSize.width * 0.16,
              //       alignment: Alignment.center,
              //       decoration: BoxDecoration(
              //           color: getBackgroundColor(), shape: BoxShape.circle),
              //       child: Neumorphic(
              //         style: const NeumorphicStyle(
              //             depth: 5, boxShape: NeumorphicBoxShape.circle()),
              //         child: Container(
              //           padding: const EdgeInsets.all(4.0),
              //           decoration: const BoxDecoration(
              //               color: Colors.white, shape: BoxShape.circle),
              //           child: Padding(
              //             padding: const EdgeInsets.only(left: 1.0),
              //             child: Icon(
              //               Icons.arrow_forward_ios_rounded,
              //               size: 16.0,
              //               color: FlorynColors.primaryColors.symptomchecker,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: GestureDetector(
          onHorizontalDragEnd: (details) {
            // Swiping in right direction.
            if (details.primaryVelocity! > 0) {
              previousBoardingScreen();
            }

            // Swiping in left direction.
            if (details.primaryVelocity! < 0) {
              nextBoardingScreen();
            }
          },
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Expanded(
              child: Container(
                color: Colors.transparent,
              ),
            ),
            Container(
              height: deviceSize.height * 0.36,
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: getBackgroundColor(currentIndex: currentIndex),
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(70.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    onBoardingScreenHeading(currentIndex),
                    style: FlorynTextStyles.h3(),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum',
                    textAlign: TextAlign.center,
                    style: FlorynTextStyles.m2(),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    height: 8.0,
                    width: 68.0,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          if (index == currentIndex) {
                            return Container(
                              width: 28.0,
                              height: 6.0,
                              margin: const EdgeInsets.only(right: 10.0),
                              decoration: BoxDecoration(
                                  color: FlorynColors.neutralColors.textwhite,
                                  borderRadius: BorderRadius.circular(20.0)),
                            );
                          } else {
                            return Container(
                              width: 10.0,
                              height: 6.0,
                              margin: const EdgeInsets.only(right: 10.0),
                              decoration: BoxDecoration(
                                  color: FlorynColors.neutralColors.textwhite,
                                  borderRadius: BorderRadius.circular(20.0)),
                            );
                          }
                        }),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
