import '../controller/app_search_controller.dart';
import 'package:get/get.dart';

class AppSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppSearchController());
  }
}
