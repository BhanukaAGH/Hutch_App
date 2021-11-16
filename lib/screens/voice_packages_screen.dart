import 'package:flutter/material.dart';

import '../widgets/one_data_packages_list.dart';

class VoicePackagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DataPackagesList('Frequently Activated Packs', 3),
            DataPackagesList('HOT SELLERS', 4),
            DataPackagesList('HUTCH BASKET PLANS', 2),
            DataPackagesList('Frequently Activated Packs', 1),
          ],
        ),
      ),
    );
  }
}
