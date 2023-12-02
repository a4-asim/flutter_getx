import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Learning'),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar(
          "Asim Majeed",
          "Welcome to Getx learning app",
          backgroundColor: Colors.blueAccent,
        );
      }),
    );
  }
}
