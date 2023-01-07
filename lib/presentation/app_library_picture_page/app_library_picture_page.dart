import '../app_library_picture_page/widgets/gridltxtc1_item_widget.dart';
import 'controller/app_library_picture_controller.dart';
import 'models/app_library_picture_model.dart';
import 'models/gridltxtc1_item_model.dart';
import 'package:festival/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppLibraryPicturePage extends StatelessWidget {
  AppLibraryPictureController controller =
      Get.put(AppLibraryPictureController(AppLibraryPictureModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Obx(() => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(104.00),
                    crossAxisCount: 3,
                    mainAxisSpacing: getHorizontalSize(16.00),
                    crossAxisSpacing: getHorizontalSize(16.00)),
                physics: BouncingScrollPhysics(),
                itemCount: controller
                    .appLibraryPictureModelObj.value.gridltxtc1ItemList.length,
                itemBuilder: (context, index) {
                  Gridltxtc1ItemModel model = controller
                      .appLibraryPictureModelObj
                      .value
                      .gridltxtc1ItemList[index];
                  return Gridltxtc1ItemWidget(model,
                      onTapImgImage: onTapImgImage);
                }))));
  }

  onTapImgImage() {
    Get.toNamed(AppRoutes.appLibraryPictureDetailsScreen);
  }
}
