import 'package:flutter/material.dart';
import 'package:hutch_app/widgets/offer_item.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  TabBar get _tabBar => const TabBar(
        labelColor: Colors.orange,
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(
            child: Text('MY OFFERS'),
          ),
          Tab(
            child: Text('PROMOTIONS'),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: _tabBar,
        body: OfferItem(),
      ),
    );
  }
}
