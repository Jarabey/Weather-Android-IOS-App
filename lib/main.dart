// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(const MyWidget()); // Wrap your app
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherPage(),
    );
  }
}