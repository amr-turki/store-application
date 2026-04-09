import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.cart_badge_plus,
              color: Colors.black,
              size: 24,
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
              height: 150,
              width: 220,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'HandBag Lv',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            r'$225',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Icon(Icons.shopping_cart, color: Colors.black),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 24,
              top: -25,
              child: Image.network(
                'https://puzzlesegypt.com/cdn/shop/files/6B24B461-5E3B-4783-9614-22B932AFFAAE_555x.jpg?v=1775309939',
                height: 100,
              ), // Image.network
            ), // Positioned
          ],
        ),
      ),
    );
  }
}
