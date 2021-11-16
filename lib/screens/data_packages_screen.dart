import 'package:flutter/material.dart';

import '../widgets/one_data_packages_list.dart';

class DataPackagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DataPackagesList('Frequently Activated Packs', 1),
            DataPackagesList('HOT SELLERS', 0),
            DataPackagesList('HUTCH BASKET PLANS', 2),
            DataPackagesList('Frequently Activated Packs', 1),
          ],
        ),
      ),
    );
  }
}
