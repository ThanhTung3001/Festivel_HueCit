import '../controller/cms_qlbando_dsbando_xoa_controller.dart';
import 'package:get/get.dart';

class CmsQlbandoDsbandoXoaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CmsQlbandoDsbandoXoaController());
  }
}
