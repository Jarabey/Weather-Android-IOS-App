// ignore_for_file: deprecated_member_use

import 'dart:js';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:device_preview/device_preview.dart';

import 'pages/weather_page.dart';

void main() {
  DevicePreview(enabled: true,
  tools: const [
    ...DevicePreview.defaultTools
  ],
  builder: (context) => const WeatherPage()
  )
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