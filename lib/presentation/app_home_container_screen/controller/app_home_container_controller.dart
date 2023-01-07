import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_home_container_screen/models/app_home_container_model.dart';
import 'package:festival/widgets/custom_bottom_bar.dart';

class AppHomeContainerController extends GetxController {
  Rx<AppHomeContainerModel> appHomeContainerModelObj =
      AppHomeContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
