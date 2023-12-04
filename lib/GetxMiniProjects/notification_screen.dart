import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/switchController.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool switchvalue = false;
  final SwitchController _switchController = Get.put(SwitchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Screen'),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Switch for Theme Change',
              style: TextStyle(fontSize: 20),
            ),
            Obx(() => Switch(
                value: _switchController.switchvalue.value,
                onChanged: (value) {
                  _switchController.switchnow(value);
                  if (_switchController.switchvalue.value == false) {
                    Get.changeTheme(ThemeData.light());
                  } else {
                    Get.changeTheme(ThemeData.dark());
                  }
                }))
          ],
        ),
      ),
    );
  }
}
