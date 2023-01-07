import '../app_library_video_page/widgets/gridplaycirclefill_item_widget.dart';
import 'controller/app_library_video_controller.dart';
import 'models/app_library_video_model.dart';
import 'models/gridplaycirclefill_item_model.dart';
import 'package:festival/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppLibraryVideoPage extends StatelessWidget {
  AppLibraryVideoController controller =
      Get.put(AppLibraryVideoController(AppLibraryVideoModel().obs));

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
                itemCount: controller.appLibraryVideoModelObj.value
                    .gridplaycirclefillItemList.length,
                itemBuilder: (context, index) {
                  GridplaycirclefillItemModel model = controller
                      .appLibraryVideoModelObj
                      .value
                      .gridplaycirclefillItemList[index];
                  return GridplaycirclefillItemWidget(model,
                      onTapImgImage: onTapImgImage);
                }))));
  }

  onTapImgImage() {
    Get.toNamed(AppRoutes.appLibraryVideoDetailsScreen);
  }
}
