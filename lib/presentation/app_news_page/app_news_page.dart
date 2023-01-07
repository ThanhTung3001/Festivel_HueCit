import '../app_news_page/widgets/listanh_item_widget.dart';
import '../app_news_page/widgets/listthirtyone1_item_widget.dart';
import 'controller/app_news_controller.dart';
import 'models/app_news_model.dart';
import 'models/listanh_item_model.dart';
import 'models/listthirtyone1_item_model.dart';
import 'package:festival/core/app_export.dart';
import 'package:festival/widgets/app_bar/appbar_image.dart';
import 'package:festival/widgets/app_bar/appbar_title.dart';
import 'package:festival/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNewsPage extends StatelessWidget {
  AppNewsController controller = Get.put(AppNewsController(AppNewsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(64.00),
                title: AppbarTitle(
                    text: "msg_tin_t_c_s_ki_n".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(48.00),
                      width: getSize(48.00),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16, top: 8, right: 16, bottom: 8),
                      onTap: onTapSearch1)
                ],
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 23, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("msg_tin_t_c_s_ki_n2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProBold16
                                            .copyWith(height: 1.25)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtXemthm();
                                        },
                                        child: Padding(
                                            padding: getPadding(bottom: 4),
                                            child: Text("lbl_xem_th_m".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtSFProMedium12
                                                    .copyWith(height: 1.25))))
                                  ]),
                              Container(
                                  height: getVerticalSize(193.00),
                                  width: getHorizontalSize(343.00),
                                  margin: getMargin(top: 16),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgAnh80x120,
                                            height: getVerticalSize(193.00),
                                            width: getHorizontalSize(343.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(12.00)),
                                            alignment: Alignment.center,
                                            onTap: () {
                                              onTapImgImage();
                                            }),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding:
                                                    getPadding(left: 8, top: 8),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  45.00),
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 5,
                                                              right: 4,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .fillWhiteA700b2
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder6),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                8),
                                                                    child: Text(
                                                                        "lbl_01"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSFProBold16Red900
                                                                            .copyWith(height: 1.25))),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Text(
                                                                        "lbl_11_2022"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSFProRegular10
                                                                            .copyWith(height: 1.20)))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 104),
                                                          child: Text(
                                                              "msg_m_t_s_l_h_i_d_n"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSFProBold16WhiteA700
                                                                  .copyWith(
                                                                      height:
                                                                          1.25)))
                                                    ])))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 15, right: 5),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.appNewsModelObj
                                          .value.listanhItemList.length,
                                      itemBuilder: (context, index) {
                                        ListanhItemModel model = controller
                                            .appNewsModelObj
                                            .value
                                            .listanhItemList[index];
                                        return ListanhItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 38),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_l_h_i_s_ki_n".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSFProBold16
                                                .copyWith(height: 1.25)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtXemthm1();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 3),
                                                child: Text("lbl_xem_th_m".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProMedium12
                                                        .copyWith(
                                                            height: 1.25))))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.appNewsModelObj
                                          .value.listthirtyone1ItemList.length,
                                      itemBuilder: (context, index) {
                                        Listthirtyone1ItemModel model =
                                            controller.appNewsModelObj.value
                                                .listthirtyone1ItemList[index];
                                        return Listthirtyone1ItemWidget(model,
                                            onTapCard: onTapCard);
                                      })))
                            ]))))));
  }

  onTapCard() {
    Get.toNamed(AppRoutes.appNewsHuenewsDetailsOneScreen);
  }

  onTapTxtXemthm() {
    Get.toNamed(AppRoutes.appNewsHuenewsScreen);
  }

  onTapImgImage() {
    Get.toNamed(AppRoutes.appNewsHuenewsDetailsScreen);
  }

  onTapTxtXemthm1() {
    Get.toNamed(AppRoutes.appNewsComingfestivalScreen);
  }

  onTapSearch1() {
    Get.toNamed(AppRoutes.appSearchScreen);
  }
}
