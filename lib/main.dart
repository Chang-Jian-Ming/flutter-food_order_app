import 'package:flutter/material.dart';
import 'package:food_order_app/routes.dart';
import 'package:food_order_app/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Order App',
      theme: appTheme(),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
