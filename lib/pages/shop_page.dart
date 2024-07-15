import 'package:flutter/material.dart';
import 'package:rodrik_ecommerce/components/shoe_tile.dart';
import 'package:rodrik_ecommerce/models/shoe.dart';

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
            'Welcome to Rodrik E-commerce',
            style: TextStyle(
                color: Color(0xFF12ad95), fontWeight: FontWeight.bold),
          ),
        ),

        // Hot Picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Hot Picks 🔥',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              Text(
                'See all',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue[400]),
              )
            ],
          ),
        ),

        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // create a shoe
              Shoe shoe = Shoe(
                  name: 'Adidas Predator',
                  price: 'Rp 2.400.000',
                  imagePath: 'lib/images/adidaspredator.png',
                  description: 'Elevate your game with the Adidas Predator');
              return ShoeTile(
                shoe: shoe,
              ); 
            },
            
          ),
        )
      ],
    );
  }
}
