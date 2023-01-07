import 'package:get/get.dart';
import 'listanh2_item_model.dart';

class AppNewsHuenewsDetailsModel {
  DateTime selectedDateTxt = DateTime.now();

  Rx<String> dateTxt = Rx('Lorem ipsum dolor sit amet');

  RxList<Listanh2ItemModel> listanh2ItemList =
      RxList.filled(5, Listanh2ItemModel());
}
