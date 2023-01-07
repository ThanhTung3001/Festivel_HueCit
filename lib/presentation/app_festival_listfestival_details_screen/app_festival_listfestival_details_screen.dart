import 'controller/app_festival_listfestival_details_controller.dart';
import 'package:festival/core/app_export.dart';
import 'package:festival/widgets/app_bar/appbar_image.dart';
import 'package:festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:festival/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AppFestivalListfestivalDetailsScreen
    extends GetWidget<AppFestivalListfestivalDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomAppBar(
                          height: getVerticalSize(56.00),
                          leadingWidth: 40,
                          leading: AppbarImage(
                              height: getSize(24.00),
                              width: getSize(24.00),
                              svgPath: ImageConstant.imgArrowleft,
                              margin: getMargin(left: 16, top: 12, bottom: 12),
                              onTap: onTapArrowleft7),
                          centerTitle: true,
                          title: AppbarSubtitle(text: "lbl_chi_ti_t_l_h_i".tr),
                          styleType: Style.bgOutlineGray200)
                    ]))));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
