import 'package:flutter/material.dart';
import 'package:hungry_busters/styles/Colors.dart';
import 'package:hungry_busters/styles/TextStyle.dart';

class PopCard extends StatelessWidget {
  const PopCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Dialog(
        child: SizedBox(
      height: 400,
      width: screenWidth,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order', style: description),
                    Text('9400 LKR', style: description)
                  ]),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery', style: description),
                    Text('300 LKR', style: description)
                  ]),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total', style: titleText),
                    Text('9700 LKR', style: titleText)
                  ]),
              TextFormField(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Address', style: titleText),
                      TextButton(
                        onPressed: () {},
                        child: const Text('change', style: priceText),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Victoria Higgins \n 34 D4, Rose Ave \n Texas',
                          style: TextStyle(color: black))
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Payment Method', style: titleText),
                      TextButton(
                          onPressed: () {},
                          child: const Text('change', style: priceText))
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.credit_card, color: black),
                      SizedBox(width: 10),
                      Text('**** **** **** 5456',
                          style: TextStyle(color: black))
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
