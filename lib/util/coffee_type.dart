import 'package:flutter/material.dart';

class CoffeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  const CoffeType({required this.coffeeType, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Text(
        coffeeType,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: isSelected ? Colors.orange : Colors.white),
      ),
    );
  }
}
