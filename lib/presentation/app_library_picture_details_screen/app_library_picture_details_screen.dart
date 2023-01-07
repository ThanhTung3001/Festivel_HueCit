import 'controller/app_library_picture_details_controller.dart';
import 'package:festival/core/app_export.dart';
import 'package:festival/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppLibraryPictureDetailsScreen
    extends GetWidget<AppLibraryPictureDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black90001,
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft24x24,
                          height: getSize(24.00),
                          width: getSize(24.00),
                          margin: getMargin(left: 16, top: 12),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      Container(
                          height: getVerticalSize(210.00),
                          width: size.width,
                          margin: getMargin(top: 221),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle2,
                                    height: getVerticalSize(210.00),
                                    width: getHorizontalSize(375.00),
                                    alignment: Alignment.center,
                                    onTap: () {
                                      onTapImgRectangleTwo();
                                    }),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: getHorizontalSize(197.00),
                                        margin: getMargin(right: 12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          41.00),
                                                      padding: getPadding(
                                                          left: 9,
                                                          top: 1,
                                                          right: 9,
                                                          bottom: 1),
                                                      decoration: AppDecoration
                                                          .txtFillBlack9006601
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtCircleBorder10),
                                                      child: Text("lbl_1_12".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSFProMedium12WhiteA700
                                                              .copyWith(
                                                                  height:
                                                                      1.25)))),
                                              Container(
                                                  height: getVerticalSize(6.00),
                                                  margin: getMargin(top: 164),
                                                  child: SmoothIndicator(
                                                      offset: 0,
                                                      count: 5,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      effect: ScrollingDotsEffect(
                                                          spacing: 4,
                                                          activeDotColor:
                                                              ColorConstant
                                                                  .amber400,
                                                          dotColor:
                                                              ColorConstant
                                                                  .whiteA7007f,
                                                          dotHeight:
                                                              getVerticalSize(
                                                                  6.00),
                                                          dotWidth:
                                                              getHorizontalSize(
                                                                  6.00))))
                                            ])))
                              ])),
                      CustomButton(
                          height: 28,
                          width: 137,
                          text: "lbl_xoay_m_n_h_nh".tr,
                          margin: getMargin(top: 16),
                          prefixWidget: Container(
                              margin: getMargin(right: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgForward)),
                          onTap: onTapXoaymnhnh,
                          alignment: Alignment.center),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 99),
                          padding: getPadding(all: 16),
                          decoration:
                              AppDecoration.gradientBlack90000Black900b201,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLtxtc();
                                    },
                                    child: Text("lbl_l_t_x_t_c".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProBold16WhiteA700
                                            .copyWith(height: 1.25))),
                                Container(
                                    width: getHorizontalSize(340.00),
                                    margin: getMargin(top: 10, bottom: 31),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_l_th_ng_h_ng2".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.43)),
                                          TextSpan(
                                              text: "lbl_xem_th_m".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.w510,
                                                  height: 1.43))
                                        ]),
                                        textAlign: TextAlign.left))
                              ]))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapImgRectangleTwo() {
    Get.toNamed(AppRoutes.appLibraryVideoDetailsScreen);
  }

  onTapXoaymnhnh() {
    Get.toNamed(AppRoutes.appLibraryPictureDetailsRotationScreen);
  }

  onTapTxtLtxtc() {
    Get.toNamed(AppRoutes.appLibraryPictureDetailsFullheightScreen);
  }
}
