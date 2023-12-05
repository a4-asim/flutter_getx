// ignore_for_file: file_names

import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitLst =
      ['Apple', 'Orange', 'Bannana', 'Stawbery', 'Grapes'].obs;
  RxList tempList = [].obs;

  addFruits(String value) {
    tempList.add(value);
  }

  removeFruits(String value) {
    tempList.remove(value);
  }
}
