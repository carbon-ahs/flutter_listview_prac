// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final typeTextStyle = TextStyle(
      fontSize: 12,
      color: Colors.black38,
    );

    final brandTextStyle = TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

    final currentPricetextStyle = TextStyle(
      fontSize: 14,
      color: Colors.black87,
    );
    final previousPricetextStyle = TextStyle(
      fontSize: 12,
      color: Colors.black45,
      decoration: TextDecoration.lineThrough,
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 16, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Type",
                    style: typeTextStyle,
                  ),
                  Text(
                    "Brand Name",
                    style: brandTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$2000.00",
                    style: currentPricetextStyle,
                  ),
                  Text(
                    "\$2500.00",
                    style: previousPricetextStyle,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20),
              height: 80,
              // width: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 0.001),
              ),
              child: Image.asset(
                'assets/images/cocacola.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            height: 10,
            color: Colors.grey[300],
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
