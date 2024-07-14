import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: GNav(
          color: Color(0xFF12ad95),
          activeColor: Colors.white,
          tabActiveBorder: Border.all(color: Color.fromARGB(255, 3, 29, 39)),
          tabBackgroundColor: Color(0xFF006e83),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home_filled,
              text: 'Shop',
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Cart',
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.wallet,
              text: 'Payment',
              textColor: Colors.white,
            ),
          ]),
    );
  }
}
