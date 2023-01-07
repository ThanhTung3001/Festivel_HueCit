import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_festival_page/models/app_festival_model.dart';

class AppFestivalController extends GetxController {
  AppFestivalController(this.appFestivalModelObj);

  Rx<AppFestivalModel> appFestivalModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
