import 'package:flutter/material.dart';

import './data_packages_screen.dart';
import './sms_packages_screen.dart';
import './voice_packages_screen.dart';
import '../widgets/app_drawer.dart';

class PackagesScreen extends StatelessWidget {
  const PackagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        DataPackagesScreen(),
        VoicePackagesScreen(),
        SMSPackagesScreen(),
      ],
    );
  }
}
