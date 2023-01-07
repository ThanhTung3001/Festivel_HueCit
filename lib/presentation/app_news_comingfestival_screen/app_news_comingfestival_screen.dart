import '../app_news_comingfestival_screen/widgets/listthirtyone2_item_widget.dart';
import 'controller/app_news_comingfestival_controller.dart';
import 'models/listthirtyone2_item_model.dart';
import 'package:festival/core/app_export.dart';
import 'package:festival/widgets/app_bar/appbar_image.dart';
import 'package:festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:festival/widgets/app_bar/custom_app_bar.dart';
import 'package:festival/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AppNewsComingfestivalScreen
    extends GetWidget<AppNewsComingfestivalController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 12),
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_l_h_i_s_ki_n".tr),
                styleType: Style.bgOutlineGray200),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: size.width,
                                  decoration: AppDecoration.outlineGray2002,
                                  child: Row(children: [
                                    CustomButton(
                                        height: 48,
                                        width: 125,
                                        text: "lbl_s_p_di_n_ra".tr,
                                        variant: ButtonVariant.OutlineRed900,
                                        shape: ButtonShape.Square,
                                        padding: ButtonPadding.PaddingAll14,
                                        fontStyle:
                                            ButtonFontStyle.SFProMedium16),
                                    Padding(
                                        padding: getPadding(
                                            left: 13, top: 14, bottom: 13),
                                        child: Text("lbl_ang_di_n_ra".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProMedium16Black90066
                                                .copyWith(height: 1.25))),
                                    Padding(
                                        padding: getPadding(
                                            left: 36,
                                            top: 12,
                                            right: 23,
                                            bottom: 15),
                                        child: Text("lbl_di_n_ra".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProMedium16Black90066
                                                .copyWith(height: 1.25)))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 20, right: 16),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .appNewsComingfestivalModelObj
                                          .value
                                          .listthirtyone2ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listthirtyone2ItemModel model =
                                            controller
                                                .appNewsComingfestivalModelObj
                                                .value
                                                .listthirtyone2ItemList[index];
                                        return Listthirtyone2ItemWidget(model,
                                            onTapCard: onTapCard);
                                      })))
                            ]))))));
  }

  onTapCard() {
    Get.toNamed(AppRoutes.appNewsHuenewsDetailsOneScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
