import '../controller/app_news_huenews_controller.dart';
import 'package:get/get.dart';

class AppNewsHuenewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppNewsHuenewsController());
  }
}
