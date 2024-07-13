import 'package:flutter/material.dart';
import 'package:rodrik_ecommerce/components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 29, 39),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
