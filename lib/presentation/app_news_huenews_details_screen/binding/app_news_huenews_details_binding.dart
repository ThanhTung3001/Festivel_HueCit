import '../controller/app_news_huenews_details_controller.dart';
import 'package:get/get.dart';

class AppNewsHuenewsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppNewsHuenewsDetailsController());
  }
}
