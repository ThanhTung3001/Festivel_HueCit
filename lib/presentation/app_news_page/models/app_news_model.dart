import 'package:get/get.dart';
import 'listanh_item_model.dart';
import 'listthirtyone1_item_model.dart';

class AppNewsModel {
  RxList<ListanhItemModel> listanhItemList =
      RxList.filled(4, ListanhItemModel());

  RxList<Listthirtyone1ItemModel> listthirtyone1ItemList =
      RxList.filled(4, Listthirtyone1ItemModel());
}
