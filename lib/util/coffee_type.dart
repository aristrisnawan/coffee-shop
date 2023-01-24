import 'package:flutter/material.dart';

class CoffeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;
  const CoffeType({
    required this.coffeeType, 
    this.isSelected = false, 
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Text(
          coffeeType,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
