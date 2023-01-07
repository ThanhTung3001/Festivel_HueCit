import 'controller/app_library_all_tab_container_controller.dart';
import 'models/app_library_all_tab_container_model.dart';
import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_library_all_page/app_library_all_page.dart';
import 'package:festival/presentation/app_library_picture_page/app_library_picture_page.dart';
import 'package:festival/presentation/app_library_video_page/app_library_video_page.dart';
import 'package:festival/widgets/app_bar/appbar_image.dart';
import 'package:festival/widgets/app_bar/appbar_title.dart';
import 'package:festival/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppLibraryAllTabContainerPage extends StatelessWidget {
  AppLibraryAllTabContainerController controller = Get.put(
      AppLibraryAllTabContainerController(
          AppLibraryAllTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(64.00),
                title: AppbarTitle(
                    text: "lbl_th_vi_n".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(48.00),
                      width: getSize(48.00),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16, top: 8, right: 16, bottom: 8),
                      onTap: onTapSearch3)
                ],
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              border: Border(
                                  bottom: BorderSide(
                                      color: ColorConstant.gray200,
                                      width: getHorizontalSize(1.00)))),
                          child: TabBar(
                              controller: controller.navtabController,
                              tabs: [
                                Tab(text: "lbl_t_t_c".tr),
                                Tab(text: "lbl_h_nh_nh".tr),
                                Tab(text: "lbl_video".tr)
                              ],
                              labelColor: ColorConstant.red900,
                              unselectedLabelColor: ColorConstant.black90066,
                              indicator: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: ColorConstant.red900,
                                          width: getHorizontalSize(2.00)))))),
                      Container(
                          margin: getMargin(
                              left: 16, top: 20, right: 16, bottom: 5),
                          height: getVerticalSize(579.00),
                          child: TabBarView(
                              controller: controller.navtabController,
                              children: [
                                AppLibraryAllPage(),
                                AppLibraryPicturePage(),
                                AppLibraryVideoPage()
                              ]))
                    ]))));
  }

  onTapSearch3() {
    Get.toNamed(AppRoutes.appSearchScreen);
  }
}
