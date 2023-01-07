import '../controller/app_festival_listfestival_category_controller.dart';
import 'package:get/get.dart';

class AppFestivalListfestivalCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppFestivalListfestivalCategoryController());
  }
}
