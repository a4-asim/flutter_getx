import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counterController.dart';
import 'package:get/get.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Example with Getx',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
            height: 160,
            width: 160,
            decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
            child: Obx(
              () => Center(
                child: Text(
                  counterController.counter.toString(),
                  style: const TextStyle(
                      fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        disabledElevation: 1,
        onPressed: () {
          counterController.incrementConuter();
          // setState(() {
          //   counter++;
          // });

          // SnackBar code for Getx
          // Get.snackbar(
          //   "Asim Majeed",
          //   "Welcome to Getx learning app",
          //   backgroundColor: Colors.blueAccent,
          //   icon: const Icon(Icons.show_chart),
          // );
        },
        shape: const RoundedRectangleBorder(
          // <= Change BeveledRectangleBorder to RoundedRectangularBorder
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
