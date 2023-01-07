import '../controller/app_library_video_controller.dart';
import '../models/gridplaycirclefill_item_model.dart';
import 'package:festival/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridplaycirclefillItemWidget extends StatelessWidget {
  GridplaycirclefillItemWidget(this.gridplaycirclefillItemModelObj,
      {this.onTapImgImage});

  GridplaycirclefillItemModel gridplaycirclefillItemModelObj;

  var controller = Get.find<AppLibraryVideoController>();

  VoidCallback? onTapImgImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(
        103.00,
      ),
      width: getSize(
        103.00,
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAnh,
            height: getSize(
              103.00,
            ),
            width: getSize(
              103.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
            alignment: Alignment.center,
            onTap: () {
              onTapImgImage!();
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: getPadding(
                left: 8,
                bottom: 10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgPlaycirclefill,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                    margin: getMargin(
                      right: 11,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                    ),
                    child: Text(
                      "lbl_l_t_x_t_c2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProMedium12WhiteA700.copyWith(
                        height: 1.25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
