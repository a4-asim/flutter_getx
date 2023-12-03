import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.back();
                  Get.back();
                },
                child: const Text('Go TO HomeScreen')),
          ),

          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Go Back')),
          ),
        ],
      ),
    );
  }
}
