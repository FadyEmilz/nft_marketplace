import 'package:flutter/material.dart';
import 'package:nft_marketplace/pages/onBoarding.dart';
import 'package:nft_marketplace/recources/route_managers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes_manager.my_routes,
      initialRoute: routesNames.onBoarding,
    );
  }
}
