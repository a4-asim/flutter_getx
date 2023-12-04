import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/sliderConroller.dart';
import 'package:get/get.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  final SliderController sliderController = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example with Getx'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Center(
                child: Container(
                  width: Get.width * .5,
                  height: Get.height * .4,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 78, 0, 0)
                          .withOpacity(sliderController.opacity.value),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Opacity Value',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Text(
                sliderController.opacity.value.toString(),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: const Color.fromARGB(255, 78, 0, 0)
                      .withOpacity(sliderController.opacity.value),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Slider(
                  value: sliderController.opacity.value,
                  onChanged: (value) {
                    sliderController.sliderController(value);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
