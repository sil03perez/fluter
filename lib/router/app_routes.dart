import 'package:appdos/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    // MenuOptions(
    //     route: 'home',
    //     name: 'HomeScreen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home_max_sharp),
    MenuOptions(
        route: 'listview1',
        name: 'Listview tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt),
    MenuOptions(
        route: 'listview2',
        name: 'Listview tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.add_alert_outlined),
    MenuOptions(
        route: 'alert',
        name: 'Alertas - Alerts',
        screen: const AlertScreen(),
        icon: Icons.list),
    MenuOptions(
        route: 'card',
        name: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOptions(
        route: 'Avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOptions(
        route: 'Animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOptions(
        route: 'Inputs',
        name: 'Text input',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),

    MenuOptions(
        route: 'Slider',
        name: 'Sliders and Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_rounded),

    MenuOptions(
        route: 'ListViewBuilder',
        name: 'ListViewBuilder',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const Listview1Screen(),
  //   'listview2': (context) => const Listview2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
