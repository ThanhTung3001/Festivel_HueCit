import '../controller/app_library_video_details_rotation_controller.dart';
import 'package:get/get.dart';

class AppLibraryVideoDetailsRotationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppLibraryVideoDetailsRotationController());
  }
}
