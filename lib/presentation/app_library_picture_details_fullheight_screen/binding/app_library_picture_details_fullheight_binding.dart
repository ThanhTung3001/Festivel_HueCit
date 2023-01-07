import '../controller/app_library_picture_details_fullheight_controller.dart';
import 'package:get/get.dart';

class AppLibraryPictureDetailsFullheightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppLibraryPictureDetailsFullheightController());
  }
}
