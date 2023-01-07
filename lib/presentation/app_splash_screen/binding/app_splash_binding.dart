import '../controller/app_splash_controller.dart';
import 'package:get/get.dart';

class AppSplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppSplashController());
  }
}
