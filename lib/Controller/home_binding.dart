import 'package:examp_1/Controller/controller.dart';
import 'package:get/get.dart';


class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<Controller>(Controller());
  }
}