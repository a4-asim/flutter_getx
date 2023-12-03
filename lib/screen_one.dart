import 'package:flutter/material.dart';
import 'package:flutter_getx/screen_two.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ScreenOne extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Container(
            color: Colors.red,
            height: Get.height* .1,
            width: Get.width * 1,
          ),

          Container(
            color: Colors.green,
            height: Get.height* .2,
            width: Get.width * 1,
          ),
        ],
      ),
    );
  }
}
