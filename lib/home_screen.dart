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
        title: const Text('Getx Learning'),
      ),
      body: Column(
        children: [
          Card(
              child: ListTile(
            title: const Text("Getx Dialogue Box"),
            onTap: () {
              Get.defaultDialog(
                contentPadding: const EdgeInsets.all(20),
                titlePadding: const EdgeInsets.all(10),
                title: 'Delete Chat',
                middleText: 'Are your sure?',
                confirm: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('Ok')),
                cancel: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('Cancel')),
              );
            },
          )),
          Card(
            child: ListTile(
              title: const Text("Getx Bottom Sheet"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 85, 156, 238),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text('Light Mode'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text('Dark Mode'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar(
          "Asim Majeed",
          "Welcome to Getx learning app",
          backgroundColor: Colors.blueAccent,
          icon: const Icon(Icons.show_chart),
        );
      }),
    );
  }
}
