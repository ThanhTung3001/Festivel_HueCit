import '../controller/app_festival_listfestival_details_controller.dart';
import 'package:get/get.dart';

class AppFestivalListfestivalDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppFestivalListfestivalDetailsController());
  }
}
