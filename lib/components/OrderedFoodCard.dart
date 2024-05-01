import 'package:flutter/material.dart';
import 'package:hungry_busters/styles/Colors.dart';
import 'package:hungry_busters/styles/TextStyle.dart';
import 'package:hungry_busters/styles/WidgetDecoration.dart';

class OrderedFoodCard extends StatefulWidget {
  final String foodImage;
  final String title;
  final int price;

  const OrderedFoodCard({
    super.key,
    required this.title,
    required this.price,
    required this.foodImage,
  });

  @override
  _OrderedFoodCardState createState() => _OrderedFoodCardState();
}

class _OrderedFoodCardState extends State<OrderedFoodCard> {
  int _order = 0;

  @override
  void initState() {
    super.initState();
    _order = 0;
  }

  void _increaseOrder() {
    setState(() {
      _order++;
    });
  }

  void _decreaseOrder() {
    if (_order > 0) {
      setState(() {
        _order--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        height: 120,
        width: screenWidth - 30,
        decoration: cardStyle,
        margin: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              SizedBox(
                height: 90,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    image: AssetImage(widget.foodImage),
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.title,
                          style: titleText,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          const Icon(Icons.star, color: red),
                        const SizedBox(width: 4),
                        const Text('4.5', style: smallText),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${widget.price} LKR', style: priceText),
                        Row(
                          children: [
                            IconButton(
                              onPressed: _decreaseOrder,
                              icon: const Icon(Icons.remove_circle_outline,
                                  color: red),
                            ),
                            Text('$_order'),
                            IconButton(
                                onPressed: _increaseOrder,
                                icon: const Icon(Icons.add_circle_outline,
                                    color: red)),
                          ],
                        )
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
