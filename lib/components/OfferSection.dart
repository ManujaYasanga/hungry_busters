import 'package:flutter/material.dart';

class OfferSection extends StatelessWidget {
  final List<String> images;

  const OfferSection({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 600,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 200,
            width: 300,
            margin: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
