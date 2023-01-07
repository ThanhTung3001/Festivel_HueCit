import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_library_picture_details_fullheight_screen/models/app_library_picture_details_fullheight_model.dart';

class AppLibraryPictureDetailsFullheightController extends GetxController {
  Rx<AppLibraryPictureDetailsFullheightModel>
      appLibraryPictureDetailsFullheightModelObj =
      AppLibraryPictureDetailsFullheightModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
