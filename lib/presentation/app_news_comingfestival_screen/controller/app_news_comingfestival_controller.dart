import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_news_comingfestival_screen/models/app_news_comingfestival_model.dart';

class AppNewsComingfestivalController extends GetxController {
  Rx<AppNewsComingfestivalModel> appNewsComingfestivalModelObj =
      AppNewsComingfestivalModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
