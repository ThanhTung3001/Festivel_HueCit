import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_home_page/models/app_home_model.dart';

class AppHomeController extends GetxController {
  AppHomeController(this.appHomeModelObj);

  Rx<AppHomeModel> appHomeModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
