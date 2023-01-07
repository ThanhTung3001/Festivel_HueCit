import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_library_video_details_screen/models/app_library_video_details_model.dart';

class AppLibraryVideoDetailsController extends GetxController {
  Rx<AppLibraryVideoDetailsModel> appLibraryVideoDetailsModelObj =
      AppLibraryVideoDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
