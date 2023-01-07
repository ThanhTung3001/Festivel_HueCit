import '../controller/app_news_huenews_details_controller.dart';
import '../models/listanh2_item_model.dart';
import 'package:festival/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listanh2ItemWidget extends StatelessWidget {
  Listanh2ItemWidget(this.listanh2ItemModelObj);

  Listanh2ItemModel listanh2ItemModelObj;

  var controller = Get.find<AppNewsHuenewsDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 7.5949785,
        right: 2,
        bottom: 7.5949785,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAnh3,
            height: getVerticalSize(
              80.00,
            ),
            width: getHorizontalSize(
              120.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              bottom: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    202.00,
                  ),
                  child: Text(
                    "msg_ph_n_lo_i_l_h_i".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProMedium16.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgCalendar,
                        height: getSize(
                          16.00,
                        ),
                        width: getSize(
                          16.00,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                        ),
                        child: Text(
                          "lbl_23_11_2022".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProRegular14Gray900.copyWith(
                            height: 1.21,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
