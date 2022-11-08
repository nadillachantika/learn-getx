import 'package:get/get.dart';
import 'package:getx_project/app/modules/add/controllers/add_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.put(HomeController());
  }
}
