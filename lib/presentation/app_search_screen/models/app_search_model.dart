import 'package:get/get.dart';
import 'app_search_item_model.dart';

class AppSearchModel {
  RxList<AppSearchItemModel> appSearchItemList =
      RxList.filled(5, AppSearchItemModel());
}
