import '../controller/app_news_huenews_details_one_controller.dart';
import 'package:get/get.dart';

class AppNewsHuenewsDetailsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppNewsHuenewsDetailsOneController());
  }
}
