import 'package:flutter/material.dart';
import 'package:flutter_getx/screen_two.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({super.key, this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One ${Get.arguments[1]}'),
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
                },
                child: const Text('Go back')),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(const ScreenTwo());
                },
                child: const Text('Screen Two')),
          ),
        ],
      ),
    );
  }
}
