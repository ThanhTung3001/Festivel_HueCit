import '../controller/app_home_container_controller.dart';
import 'package:get/get.dart';

class AppHomeContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppHomeContainerController());
  }
}
