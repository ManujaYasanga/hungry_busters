import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hungry_busters/pages/FoodItemPage.dart';
import 'package:hungry_busters/styles/Colors.dart';

import '../components/FoodSection.dart';
import '../components/FoodTypeSection.dart';
import '../components/OfferSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu, color: red),
                    ),
                    const Row(
                      children: [
                        Text(
                          'Good morning Victoria !',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/woman.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SearchBar(
                leading: Icon(Icons.search_rounded),
                hintText: 'Search meals',
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      OfferSection(
                        key: key,
                        images: const [
                          'assets/offer-1.jpeg',
                          'assets/offer-2.jpg',
                          'assets/offer-3.jpg'
                        ],
                      ),
                      // Add more ImageCarousel widgets as needed
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 80, // Specify the height of the SizedBox
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FoodTypeSection(
                        foodIcons: [
                          Icons.lunch_dining,
                          Icons.local_pizza,
                          Icons.dinner_dining,
                          Icons.local_cafe,
                          Icons.icecream,
                          Icons.local_bar,
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const FoodItemPage());
                      },
                      child: const FoodSection(
                          foodImage: 'assets/tex-mex-bbq.jpg',
                          title: 'TEX MEX BBQ',
                          description: 'Non Veg Classic Meat',
                          price: '1850 LKR'),
                    ),
                    const FoodSection(
                        foodImage: 'assets/twin-burger.jpeg',
                        title: 'Twin Burger',
                        description: 'Desc2',
                        price: '1450 LKR'),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const FoodItemPage());
                      },
                      child: const FoodSection(
                          foodImage: 'assets/pasta-mozeralla.jpg',
                          title: 'Pasta Mozeralla',
                          description: 'Desc3',
                          price: '2250 LKR'),
                    ),
                    const FoodSection(
                        foodImage: 'assets/veg-burger.jpg',
                        title: 'VEG BURGER',
                        description: 'description',
                        price: '1750 LKR')
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
