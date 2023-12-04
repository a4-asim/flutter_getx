// ignore_for_file: file_names

import 'package:get/get.dart';

class CounterController extends GetxController {
  // ignore: non_constant_identifier_names
  RxInt counter = 1.obs;

  // ignore: non_constant_identifier_names
  incrementConuter() {
    counter.value++;
  }
}
