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
            icon: Icon(CupertinoIcons.cart_badge_plus, color: Colors.black),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('New Trend', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
