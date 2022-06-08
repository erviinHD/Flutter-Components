import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOption = <MenuOptions>[
    MenuOptions(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOptions(
        route: 'listview1',
        name: 'ListView1 Screen',
        screen: const Listview1Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'listview2',
        name: 'ListView2 Screen',
        screen: const Listview2Screen(),
        icon: Icons.list_alt),
    MenuOptions(
        route: 'alerts',
        name: 'Alerts Screen',
        screen: const AlertScreen(),
        icon: Icons.notifications),
    MenuOptions(
        route: 'cards',
        name: 'Cards Screen',
        screen: const CardScreen(),
        icon: Icons.card_travel_sharp),
    MenuOptions(
        route: 'avatar',
        name: 'Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alerts': (BuildContext context) => const AlertScreen(),
  //   'cards': (BuildContext context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
