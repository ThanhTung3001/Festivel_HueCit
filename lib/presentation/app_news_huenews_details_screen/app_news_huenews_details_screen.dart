import '../app_news_huenews_details_screen/widgets/listanh2_item_widget.dart';
import 'controller/app_news_huenews_details_controller.dart';
import 'models/listanh2_item_model.dart';
import 'package:festival/core/app_export.dart';
import 'package:festival/widgets/app_bar/appbar_image.dart';
import 'package:festival/widgets/app_bar/appbar_subtitle.dart';
import 'package:festival/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AppNewsHuenewsDetailsScreen
    extends GetWidget<AppNewsHuenewsDetailsController> {
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
                    onTap: onTapArrowleft2),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_chi_ti_t_tin_t_c".tr),
                styleType: Style.bgOutlineGray200),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 17, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(326.00),
                                  child: Text("msg_m_t_s_l_h_i_d_n".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProBold20Gray90001
                                          .copyWith(height: 1.40))),
                              GestureDetector(
                                  onTap: () {
                                    onTapThoigian();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 7),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCalendar16x16,
                                            height: getSize(16.00),
                                            width: getSize(16.00),
                                            margin: getMargin(bottom: 1)),
                                        Padding(
                                            padding: getPadding(left: 4),
                                            child: Obx(() => Text(
                                                controller
                                                    .appNewsHuenewsDetailsModelObj
                                                    .value
                                                    .dateTxt
                                                    .value,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProRegular14Black90066
                                                    .copyWith(height: 1.21))))
                                      ]))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgAnh80x120,
                                  height: getVerticalSize(193.00),
                                  width: getHorizontalSize(343.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(12.00)),
                                  margin: getMargin(top: 16)),
                              Container(
                                  width: getHorizontalSize(343.00),
                                  margin: getMargin(top: 15),
                                  child: Text("msg_l_ch_c_a".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProMedium16
                                          .copyWith(height: 1.50))),
                              Container(
                                  width: getHorizontalSize(341.00),
                                  margin: getMargin(top: 13),
                                  child: Text("msg_c_hu_l_v_ng".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProRegular16
                                          .copyWith(height: 1.50))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgPicture,
                                  height: getVerticalSize(193.00),
                                  width: getHorizontalSize(343.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(12.00)),
                                  margin: getMargin(top: 14)),
                              Container(
                                  width: getHorizontalSize(343.00),
                                  margin: getMargin(top: 7),
                                  child: Text("msg_ng_i_d_n_v_du".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtSFProRegularItalic16
                                          .copyWith(height: 1.50))),
                              Container(
                                  width: getHorizontalSize(339.00),
                                  margin: getMargin(top: 17),
                                  child: Text("msg_tri_n_l_m_gi_i_thi_u".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProRegular16
                                          .copyWith(height: 1.50))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(top: 18),
                                      child: Text("lbl_xu_n_t".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSFProBold16
                                              .copyWith(height: 1.25)))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(343.00),
                                  margin: getMargin(top: 16),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray200)),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Text("lbl_c_c_tin_kh_c".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProMedium16Black900
                                          .copyWith(height: 1.25))),
                              Padding(
                                  padding: getPadding(top: 17, right: 5),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .appNewsHuenewsDetailsModelObj
                                          .value
                                          .listanh2ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listanh2ItemModel model = controller
                                            .appNewsHuenewsDetailsModelObj
                                            .value
                                            .listanh2ItemList[index];
                                        return Listanh2ItemWidget(model);
                                      })))
                            ]))))));
  }

  Future<void> onTapThoigian() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate:
            controller.appNewsHuenewsDetailsModelObj.value.selectedDateTxt,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.appNewsHuenewsDetailsModelObj.value.selectedDateTxt = dateTime;
      controller.appNewsHuenewsDetailsModelObj.value.dateTxt.value =
          dateTime.format(SHORT_DATE_WITH_FULL_YEAR);
    }
  }

  onTapArrowleft2() {
    Get.back();
  }
}
