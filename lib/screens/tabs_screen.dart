import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import './home_screen.dart';
import './packages_screen.dart';
import './my_offers_screen.dart';
import './my_profile_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;
  static const List<Map<String, dynamic>> _widgetOptions =
      <Map<String, dynamic>>[
    {'screen': HomeScreen(), 'title': 'HUTCH'},
    {'screen': ProfileScreen(), 'title': 'My Profile'},
    {'screen': OffersScreen(), 'title': 'My Offers'},
    {'screen': PackagesScreen(), 'title': 'Packages'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TabBar get _tabBar => const TabBar(
        tabs: [
          Tab(
            child: Text(
              'DATA',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Tab(
            child: Text(
              'VOICE',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Tab(
            child: Text(
              'SMS',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            _widgetOptions.elementAt(_selectedIndex)['title'],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.mail_outline),
              onPressed: () {},
            ),
          ],
          bottom:
              _widgetOptions.elementAt(_selectedIndex)['title'] == 'Packages'
                  ? PreferredSize(
                      preferredSize: _tabBar.preferredSize,
                      child: ColoredBox(
                        color: Colors.white,
                        child: _tabBar,
                      ),
                    )
                  : null,
        ),
        drawer: AppDrawer(),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex)['screen'],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department_outlined),
              label: 'My Offers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_rounded),
              label: 'Packages',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
