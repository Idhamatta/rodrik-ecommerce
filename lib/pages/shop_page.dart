import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
              color: Color(0xFF006e83), borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Color.fromARGB(255, 3, 29, 39)),
              ),
              Icon(
                Icons.search_rounded,
                color: Color.fromARGB(255, 3, 29, 39),
              )
            ],
          ),
        ),

        // Message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            'Ich Bin Ein Berliner, Deutschland Uber Alles',
            style: TextStyle(
                color: Color(0xFF12ad95), fontWeight: FontWeight.bold),
          ),
        ),

        // Hot Picks
        const Row(
          children: [
            Text(
              'Hot Picks 🔥',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
