import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_library_all_tab_container_page/models/app_library_all_tab_container_model.dart';
import 'package:flutter/material.dart';

class AppLibraryAllTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AppLibraryAllTabContainerController(this.appLibraryAllTabContainerModelObj);

  Rx<AppLibraryAllTabContainerModel> appLibraryAllTabContainerModelObj;

  late TabController navtabController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
