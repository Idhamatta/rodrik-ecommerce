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
            padding: const EdgeInsets.all(21.0),
            child: Text(
              shoe.description,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          // Price + Details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Shoe Name
                    Text(
                      shoe.name,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFc1faff),
                          fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 5),

                    // Price
                    Text(
                      shoe.price,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFc1faff),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                // Plus Button
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFFc1faff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Icon(Icons.add_rounded),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
