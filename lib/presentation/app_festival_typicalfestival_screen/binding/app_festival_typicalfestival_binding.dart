import '../controller/app_festival_typicalfestival_controller.dart';
import 'package:get/get.dart';

class AppFestivalTypicalfestivalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppFestivalTypicalfestivalController());
  }
}
