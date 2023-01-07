import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_news_page/models/app_news_model.dart';

class AppNewsController extends GetxController {
  AppNewsController(this.appNewsModelObj);

  Rx<AppNewsModel> appNewsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
