import 'dart:developer';

import 'package:berry_common/button/gradient_button.dart';
import 'package:berry_common/circle_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Berry common widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleImage(
                imagePath: "assets/images/person-winter.png",
              ),
              GradientButton(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: const [
                  Color(0xffff6b6b),
                  Color(0xfffcc419),
                ],
                child: const Text(
                  "Gradient Button!",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  log("Gradient button clicked...!");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
