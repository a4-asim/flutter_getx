import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool switchvalue = false.obs;

  switchnow(bool value) {
    switchvalue.value = value;
  }
}
