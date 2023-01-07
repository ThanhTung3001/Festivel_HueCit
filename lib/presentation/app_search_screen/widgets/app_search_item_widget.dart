import '../controller/app_search_controller.dart';
import '../models/app_search_item_model.dart';
import 'package:festival/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppSearchItemWidget extends StatelessWidget {
  AppSearchItemWidget(this.appSearchItemModelObj);

  AppSearchItemModel appSearchItemModelObj;

  var controller = Get.find<AppSearchController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 6.0,
        bottom: 6.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgClock,
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 2,
              bottom: 1,
            ),
            child: Text(
              "lbl_ua_thuy_n".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFProRegular16.copyWith(
                height: 1.25,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgClose,
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
          ),
        ],
      ),
    );
  }
}
