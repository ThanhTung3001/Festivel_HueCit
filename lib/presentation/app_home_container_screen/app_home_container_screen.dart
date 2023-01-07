import 'controller/app_home_container_controller.dart';
import 'package:festival/core/app_export.dart';
import 'package:festival/presentation/app_festival_page/app_festival_page.dart';
import 'package:festival/presentation/app_home_page/app_home_page.dart';
import 'package:festival/presentation/app_library_all_tab_container_page/app_library_all_tab_container_page.dart';
import 'package:festival/presentation/app_news_page/app_news_page.dart';
import 'package:festival/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class AppHomeContainerScreen extends GetWidget<AppHomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.appHomePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Trangch:
        return AppRoutes.appHomePage;
      case BottomBarEnum.Tintc:
        return AppRoutes.appNewsPage;
      case BottomBarEnum.Lhi:
        return AppRoutes.appFestivalPage;
      case BottomBarEnum.Thvin:
        return AppRoutes.appLibraryAllTabContainerPage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.appHomePage:
        return AppHomePage();
      case AppRoutes.appNewsPage:
        return AppNewsPage();
      case AppRoutes.appFestivalPage:
        return AppFestivalPage();
      case AppRoutes.appLibraryAllTabContainerPage:
        return AppLibraryAllTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
