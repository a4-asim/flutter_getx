import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble opacity = 0.5.obs;

  sliderController(double value) {
    opacity.value = value;
  }
}
