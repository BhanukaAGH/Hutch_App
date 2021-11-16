import 'package:flutter/material.dart';
import 'package:hutch_app/screens/tabs_screen.dart';

import 'screens/packages_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: const Color.fromRGBO(242, 104, 41, .1),
      100: const Color.fromRGBO(242, 104, 41, .2),
      200: const Color.fromRGBO(242, 104, 41, .3),
      300: const Color.fromRGBO(242, 104, 41, .4),
      400: const Color.fromRGBO(242, 104, 41, .5),
      500: const Color.fromRGBO(242, 104, 41, .6),
      600: const Color.fromRGBO(242, 104, 41, .7),
      700: const Color.fromRGBO(242, 104, 41, .8),
      800: const Color.fromRGBO(242, 104, 41, .9),
      900: const Color.fromRGBO(242, 104, 41, 1),
    };

    MaterialColor colorCustom = MaterialColor(0xFFF26829, color);

    return MaterialApp(
      title: 'Hutch App',
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: TabsScreen(),
    );
  }
}
