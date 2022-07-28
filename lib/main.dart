import 'package:floryn/src/data/service/routes.dart';
import 'package:floryn/src/ui/shared/customdropdown.widget.dart';
import 'package:floryn/src/ui/views/home/homescreen/homescreen.notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

OverlayEntry? floatingDropdown;
bool isDropdownOpened = false;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(
    module: AppModule(),
    child: MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeScreenNotifier()),
        ChangeNotifierProvider(create: (_) => CustomDropDownWidgetNotifier()),
      ],
      child: const FlorynHealthApp(),
    ),
  ));
}

late Size deviceSize;
final GlobalKey<NavigatorState> globalNavigatorKey =
    GlobalKey<NavigatorState>();
RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class FlorynHealthApp extends StatefulWidget {
  const FlorynHealthApp({Key? key}) : super(key: key);

  @override
  State<FlorynHealthApp> createState() => _FlorynHealthAppState();
}

class _FlorynHealthAppState extends State<FlorynHealthApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Floryn-Health',
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
