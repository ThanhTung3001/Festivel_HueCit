import '../app_library_all_page/widgets/gridltxtc_item_widget.dart';
import 'controller/app_library_all_controller.dart';
import 'models/app_library_all_model.dart';
import 'models/gridltxtc_item_model.dart';
import 'package:festival/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppLibraryAllPage extends StatelessWidget {
  AppLibraryAllController controller =
      Get.put(AppLibraryAllController(AppLibraryAllModel().obs));

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
                    .appLibraryAllModelObj.value.gridltxtcItemList.length,
                itemBuilder: (context, index) {
                  GridltxtcItemModel model = controller
                      .appLibraryAllModelObj.value.gridltxtcItemList[index];
                  return GridltxtcItemWidget(model,
                      onTapImgImage: onTapImgImage);
                }))));
  }

  onTapImgImage() {
    Get.toNamed(AppRoutes.appLibraryPictureDetailsScreen);
  }
}
