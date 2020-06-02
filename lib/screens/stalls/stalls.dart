import 'package:flutter/material.dart';
import 'package:food_order_app/screens/stalls/components/body.dart';

class Stalls extends StatefulWidget {
  final Map data;

  Stalls(this.data);

  @override
  _StallsState createState() => _StallsState(data);
}

class _StallsState extends State<Stalls> {
  Map data;

  _StallsState(this.data);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(data),
    );
  }
}