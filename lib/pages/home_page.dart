import 'package:flutter/material.dart';

import '../components/bottom_navbar.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // we need a int for keep track on the index
  int _currentInd = 0;

  // when user taps on the bottom bar, update current index
  void goToPage(int index) {
    setState(() {
      _currentInd = index;
    });
  }

  // pages to display
  final List _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.brown[800],
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 150, 105, 91),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/cuddle_couch_logo.png',
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(
                    color: Color.fromARGB(255, 109, 67, 52),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      color: Colors.brown.shade100,
                    ),
                    title: Text(
                      'Profile',
                      style: TextStyle(color: Colors.brown[100]),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.cases_rounded,
                      color: Colors.brown.shade100,
                    ),
                    title: Text(
                      'Orders',
                      style: TextStyle(color: Colors.brown[100]),
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.brown.shade100,
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(color: Colors.brown[100]),
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.brown.shade100,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.brown[100]),
                    ),
                  ),
                ),
              ],
            ),
            
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.outbound_sharp,
                      color: Colors.brown.shade100,
                    ),
                    title: Text(
                      'Log Out',
                      style: TextStyle(color: Colors.brown[100]),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    '- Y A R A -',
                    style: TextStyle(
                      color: Colors.brown.shade100,
                      fontSize: 10,
                      letterSpacing: 10,
                      fontFamily: 'Raleway'
                    ),
                  ),
                ),
              ],
            )
          ]
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => goToPage(index),
      ),
      body: _pages[_currentInd],
    );
  }
}
