import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/usage_list.dart';
import '../widgets/three_buttons_section.dart';
import '../widgets/home_main_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MainCard(),
          ButtonSection(),
          UsageList(),
        ],
      ),
    );
  }
}
