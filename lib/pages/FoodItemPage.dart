import 'package:flutter/material.dart';
import 'package:hungry_busters/components/FoodCardSection.dart';
import 'package:hungry_busters/styles/ButtonStyle.dart';
import 'package:hungry_busters/styles/Colors.dart';
import 'package:hungry_busters/styles/TextStyle.dart';

class FoodItemPage extends StatelessWidget {
  const FoodItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: screenWidth,
              child: const Image(
                image: AssetImage('assets/pasta-mozeralla.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pasta Mozeralla', style: foodItemPageTitle),
                        Icon(Icons.favorite_border, color: black)
                      ]),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Non Veg Classic Meat', style: smallText),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              const Icon(Icons.star, color: red),
                            const SizedBox(width: 4),
                            const Text('4.5', style: smallText),
                          ],
                        ),
                        const Text('2250 LKR', style: priceText)
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: buttonStyle,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 80.0, vertical: 10.0),
                      child: Text('Add to Bag', style: buttonText),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: RichText(
                          textAlign: TextAlign.justify,
                          text: const TextSpan(style: description, children: [
                            TextSpan(
                                text: 'Pasta Mozzarella ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.')
                          ]))),
                  const Divider(color: black, thickness: 2),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('You might also like', style: smallText),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: FoodCardSection(images: [
                        'assets/veg-burger.jpg',
                        'assets/twin-burger.jpeg',
                        'assets/tex-mex-bbq.jpg'
                      ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
