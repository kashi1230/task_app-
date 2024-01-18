
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class cmnController extends GetxController {
  RxInt tap = 0.obs;

  void toggle(int index) {
    tap.value = index;
  }
}
