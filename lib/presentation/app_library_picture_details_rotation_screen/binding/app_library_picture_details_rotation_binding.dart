import '../controller/app_library_picture_details_rotation_controller.dart';
import 'package:get/get.dart';

class AppLibraryPictureDetailsRotationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppLibraryPictureDetailsRotationController());
  }
}
