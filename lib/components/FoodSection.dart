import 'package:flutter/material.dart';
import 'package:hungry_busters/styles/Colors.dart';
import 'package:hungry_busters/styles/TextStyle.dart';
import 'package:hungry_busters/styles/WidgetDecoration.dart';

class FoodSection extends StatelessWidget {
  final String foodImage;
  final String title;
  final String description;
  final String price;

  const FoodSection({
    super.key,
    required this.foodImage,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        height: 120,
        width: screenWidth - 30,
        decoration: cardStyle,
        margin: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              // Left side: Image Container
              SizedBox(
                height: 90,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    image: AssetImage(foodImage),
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ), // Add some spacing between image and text
              // Right side: Text Description Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Title Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: titleText,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                      ],
                    ),
                    // Spacer to create space between title and description
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          const Icon(Icons.star, color: red),
                        const SizedBox(width: 4),
                        const Text('4.5', style: smallText),
                      ],
                    ),

                    // Description Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(description, style: smallText),
                        Text(price, style: priceText)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
