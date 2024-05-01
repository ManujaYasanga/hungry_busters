import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hungry_busters/components/PopCard.dart';
import 'package:hungry_busters/styles/ButtonStyle.dart';
import 'package:hungry_busters/styles/TextStyle.dart';

import '/components/OrderedFoodCard.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 80.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Order Summary',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    OrderedFoodCard(
                      title: 'TEX-MEX-BBQ',
                      price: 1850,
                      foodImage: 'assets/tex-mex-bbq.jpg',
                    ),
                    OrderedFoodCard(
                      title: 'TWIN BURGER',
                      price: 1400,
                      foodImage: 'assets/twin-burger.jpeg',
                    ),
                    OrderedFoodCard(
                        title: 'VEG BURGER',
                        price: 1750,
                        foodImage: 'assets/veg-burger.jpg')
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.dialog(const PopCard());
              },
              style: buttonStyle,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
                child: Text('Checkout', style: buttonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
