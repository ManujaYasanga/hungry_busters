import 'package:flutter/material.dart';

class FoodTypeSection extends StatelessWidget {
  final List<IconData> foodIcons;

  const FoodTypeSection({super.key, required this.foodIcons});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 500, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodIcons.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60, // Adjust width as needed
              height: 60, // Adjust height as needed
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Icon(
                foodIcons[index],
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
