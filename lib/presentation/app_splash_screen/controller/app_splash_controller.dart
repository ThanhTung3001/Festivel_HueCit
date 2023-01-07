import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_splash_screen/models/app_splash_model.dart';

class AppSplashController extends GetxController {
  Rx<AppSplashModel> appSplashModelObj = AppSplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.appHomeContainerScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
