import '../controller/app_news_comingfestival_controller.dart';
import 'package:get/get.dart';

class AppNewsComingfestivalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppNewsComingfestivalController());
  }
}
