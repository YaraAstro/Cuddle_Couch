import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {

  void Function(int)? onTabChange;

  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GNav(
        color: Colors.brown[300],
        activeColor: Colors.brown.shade800,
        tabActiveBorder: Border.all(color: Colors.white24),
        tabBackgroundColor: Colors.brown.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 20,
        gap: 5,
        padding: const EdgeInsets.all(15),
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home_rounded,
            text: 'Shop',
            textStyle: TextStyle(
              fontFamily: 'GreatVibes',
              fontSize: 18,
            ),
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
            textStyle: TextStyle(
              fontFamily: 'GreatVibes',
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}