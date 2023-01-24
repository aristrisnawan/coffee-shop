import 'dart:ui';

import 'package:flutter/material.dart';

class CofeeTile extends StatelessWidget {
  final String coffeImagePath;
  final String coffeName;
  final String coffePrice;

  const CofeeTile({
    required this.coffeImagePath,
    required this.coffeName,
    required this.coffePrice
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black54,
      ),
      height: 330,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                coffeImagePath,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              coffeName,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "With Oat Milk",
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ $coffePrice',
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(4)),
                      child: Icon(Icons.add))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
