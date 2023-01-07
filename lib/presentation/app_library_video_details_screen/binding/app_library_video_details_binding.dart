import '../controller/app_library_video_details_controller.dart';
import 'package:get/get.dart';

class AppLibraryVideoDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppLibraryVideoDetailsController());
  }
}
