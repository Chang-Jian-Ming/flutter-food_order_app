import 'package:flutter/material.dart';
import 'package:food_order_app/screens/home/components/body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Body(),
    );
  }
}