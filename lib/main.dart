import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_application/screen/home_screen.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {HomeScreen.id: (context) => HomeScreen()},
      initialRoute: HomeScreen.id,
      home: HomeScreen(),
    );
  }
}
