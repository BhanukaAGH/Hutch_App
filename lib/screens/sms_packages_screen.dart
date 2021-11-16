import 'package:flutter/material.dart';

import '../widgets/one_data_packages_list.dart';

class SMSPackagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DataPackagesList('Frequently Activated Packs', 1),
            DataPackagesList('HOT SELLERS', 4),
            DataPackagesList('HUTCH BASKET PLANS', 0),
            DataPackagesList('Frequently Activated Packs', 1),
          ],
        ),
      ),
    );
  }
}
