import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(color: Color(0xFF12ad95), tabs: [
        GButton(
          icon: Icons.home_filled,
          text: 'Shop',
          textColor: Colors.white,
          iconActiveColor: Colors.white,
        ),
        GButton(
          icon: Icons.shopping_bag_outlined,
          text: 'Cart',
          textColor: Colors.white,
          iconActiveColor: Colors.white,
        ),
        GButton(
          icon: Icons.wallet,
          text: 'Payment',
          textColor: Colors.white,
          iconActiveColor: Colors.white,
        ),
      ]),
    );
  }
}
