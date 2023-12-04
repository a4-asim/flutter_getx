import 'package:flutter/material.dart';
import 'package:flutter_getx/GetxMiniProjects/counter_screen.dart';
import 'package:flutter_getx/GetxMiniProjects/slider_screen.dart';
import 'package:flutter_getx/home_screen.dart';
import 'package:flutter_getx/screen_one.dart';
import 'package:flutter_getx/screen_two.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Getx Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),

      // Routes Of App

      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/screenOne', page: () => ScreenOne()),
        GetPage(name: '/screenTwo', page: () => const ScreenTwo()),
        GetPage(name: '/counterScreen', page: () => const CounterExample()),
        GetPage(name: '/sliderScreen', page: () => const SliderExample()),
      ],
    );
  }
}
