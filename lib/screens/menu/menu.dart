import 'package:flutter/material.dart';
import 'package:food_order_app/screens/menu/components/body.dart';

class Menu extends StatefulWidget {
  final Map data;

  Menu(this.data);

  @override
  _MenuState createState() => _MenuState(data);
}

class _MenuState extends State<Menu> {
  Map data;

  _MenuState(this.data);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(data),
    );
  }
}