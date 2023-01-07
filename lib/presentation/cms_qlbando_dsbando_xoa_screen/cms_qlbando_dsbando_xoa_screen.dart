import 'controller/cms_qlbando_dsbando_xoa_controller.dart';
import 'package:festival/core/app_export.dart';
import 'package:festival/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CmsQlbandoDsbandoXoaScreen
    extends GetWidget<CmsQlbandoDsbandoXoaController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          padding: getPadding(
            top: 15,
            bottom: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgDownload48x42,
                height: getVerticalSize(
                  48.00,
                ),
                width: getHorizontalSize(
                  42.00,
                ),
                margin: getMargin(
                  top: 24,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  198.00,
                ),
                margin: getMargin(
                  top: 39,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_b_n_c_ch_c_ch_n2".tr,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                      TextSpan(
                        text: "msg_b_n_s_ki_n2".tr,
                        style: TextStyle(
                          color: ColorConstant.pink600,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 136,
            right: 136,
            bottom: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                height: 40,
                width: 110,
                text: "lbl_h_y_b".tr,
                variant: ButtonVariant.OutlineGray200,
                shape: ButtonShape.RoundedBorder4,
                padding: ButtonPadding.PaddingAll8,
                fontStyle: ButtonFontStyle.NunitoMedium16,
              ),
              CustomButton(
                height: 40,
                width: 110,
                text: "lbl_ng".tr,
                margin: getMargin(
                  left: 8,
                ),
                variant: ButtonVariant.FillPink600,
                shape: ButtonShape.RoundedBorder4,
                padding: ButtonPadding.PaddingAll8,
                fontStyle: ButtonFontStyle.NunitoMedium16WhiteA700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
