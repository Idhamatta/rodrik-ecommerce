import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          color: Color(0xFF12ad95),
          activeColor: Colors.white,
          tabActiveBorder: Border.all(color: Color.fromARGB(255, 3, 29, 39)),
          tabBackgroundColor: Color(0xFF006e83),
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
