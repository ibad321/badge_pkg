import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Badge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Badge"),
          actions: [
            Center(
              child: Badge(
                badgeColor: Colors.red,
                badgeContent: const Text(
                  '3',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                animationType: BadgeAnimationType.fade,
                animationDuration: const Duration(seconds: 5),
                child: const Icon(
                  FontAwesomeIcons.cartShopping,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Badge(
                  badgeColor: Colors.red,
                  badgeContent: const Text('3'),
                  animationType: BadgeAnimationType.fade,
                  animationDuration: const Duration(seconds: 4),
                  child: const Icon(
                    FontAwesomeIcons.cartShopping,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
