import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_search_screen/models/app_search_model.dart';
import 'package:flutter/material.dart';

class AppSearchController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  Rx<AppSearchModel> appSearchModelObj = AppSearchModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchbarController.dispose();
  }
}
