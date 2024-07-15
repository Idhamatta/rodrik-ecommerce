import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rodrik_ecommerce/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
          color: Color(0xFF006e83), borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                shoe.imagePath,
              )),
          // description
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              shoe.description,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          // Price + Details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // Shoe Name
                  Text(shoe.name),

                  // Price
                  Text(shoe.price),
                ],
              ),

              // Plus Button
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xFF12ad95),
                    borderRadius: BorderRadius.circular(8)),
                child: Icon(Icons.add_rounded),
              )
            ],
          )
        ],
      ),
    );
  }
}
