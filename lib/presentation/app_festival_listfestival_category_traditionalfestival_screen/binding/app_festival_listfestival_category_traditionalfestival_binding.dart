import '../controller/app_festival_listfestival_category_traditionalfestival_controller.dart';
import 'package:get/get.dart';

class AppFestivalListfestivalCategoryTraditionalfestivalBinding
    extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
        () => AppFestivalListfestivalCategoryTraditionalfestivalController());
  }
}
