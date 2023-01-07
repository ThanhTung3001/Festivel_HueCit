import 'package:festival/presentation/app_splash_screen/app_splash_screen.dart';
import 'package:festival/presentation/app_splash_screen/binding/app_splash_binding.dart';
import 'package:festival/presentation/app_home_container_screen/app_home_container_screen.dart';
import 'package:festival/presentation/app_home_container_screen/binding/app_home_container_binding.dart';
import 'package:festival/presentation/app_search_screen/app_search_screen.dart';
import 'package:festival/presentation/app_search_screen/binding/app_search_binding.dart';
import 'package:festival/presentation/app_news_huenews_screen/app_news_huenews_screen.dart';
import 'package:festival/presentation/app_news_huenews_screen/binding/app_news_huenews_binding.dart';
import 'package:festival/presentation/app_news_comingfestival_screen/app_news_comingfestival_screen.dart';
import 'package:festival/presentation/app_news_comingfestival_screen/binding/app_news_comingfestival_binding.dart';
import 'package:festival/presentation/app_news_huenews_details_screen/app_news_huenews_details_screen.dart';
import 'package:festival/presentation/app_news_huenews_details_screen/binding/app_news_huenews_details_binding.dart';
import 'package:festival/presentation/app_news_huenews_details_one_screen/app_news_huenews_details_one_screen.dart';
import 'package:festival/presentation/app_news_huenews_details_one_screen/binding/app_news_huenews_details_one_binding.dart';
import 'package:festival/presentation/app_festival_typicalfestival_screen/app_festival_typicalfestival_screen.dart';
import 'package:festival/presentation/app_festival_typicalfestival_screen/binding/app_festival_typicalfestival_binding.dart';
import 'package:festival/presentation/app_festival_listfestival_category_screen/app_festival_listfestival_category_screen.dart';
import 'package:festival/presentation/app_festival_listfestival_category_screen/binding/app_festival_listfestival_category_binding.dart';
import 'package:festival/presentation/app_festival_listfestival_category_traditionalfestival_screen/app_festival_listfestival_category_traditionalfestival_screen.dart';
import 'package:festival/presentation/app_festival_listfestival_category_traditionalfestival_screen/binding/app_festival_listfestival_category_traditionalfestival_binding.dart';
import 'package:festival/presentation/app_festival_listfestival_details_screen/app_festival_listfestival_details_screen.dart';
import 'package:festival/presentation/app_festival_listfestival_details_screen/binding/app_festival_listfestival_details_binding.dart';
import 'package:festival/presentation/app_library_picture_details_screen/app_library_picture_details_screen.dart';
import 'package:festival/presentation/app_library_picture_details_screen/binding/app_library_picture_details_binding.dart';
import 'package:festival/presentation/app_library_video_details_screen/app_library_video_details_screen.dart';
import 'package:festival/presentation/app_library_video_details_screen/binding/app_library_video_details_binding.dart';
import 'package:festival/presentation/app_library_picture_details_rotation_screen/app_library_picture_details_rotation_screen.dart';
import 'package:festival/presentation/app_library_picture_details_rotation_screen/binding/app_library_picture_details_rotation_binding.dart';
import 'package:festival/presentation/app_library_video_details_rotation_screen/app_library_video_details_rotation_screen.dart';
import 'package:festival/presentation/app_library_video_details_rotation_screen/binding/app_library_video_details_rotation_binding.dart';
import 'package:festival/presentation/app_library_picture_details_fullheight_screen/app_library_picture_details_fullheight_screen.dart';
import 'package:festival/presentation/app_library_picture_details_fullheight_screen/binding/app_library_picture_details_fullheight_binding.dart';
import 'package:festival/presentation/cms_qlbando_dsbando_xoa_screen/cms_qlbando_dsbando_xoa_screen.dart';
import 'package:festival/presentation/cms_qlbando_dsbando_xoa_screen/binding/cms_qlbando_dsbando_xoa_binding.dart';
import 'package:festival/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:festival/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String appSplashScreen = '/app_splash_screen';

  static const String appHomePage = '/app_home_page';

  static const String appHomeContainerScreen = '/app_home_container_screen';

  static const String appSearchScreen = '/app_search_screen';

  static const String appNewsPage = '/app_news_page';

  static const String appNewsHuenewsScreen = '/app_news_huenews_screen';

  static const String appNewsComingfestivalScreen =
      '/app_news_comingfestival_screen';

  static const String appNewsHuenewsDetailsScreen =
      '/app_news_huenews_details_screen';

  static const String appNewsHuenewsDetailsOneScreen =
      '/app_news_huenews_details_one_screen';

  static const String appFestivalPage = '/app_festival_page';

  static const String appFestivalTypicalfestivalScreen =
      '/app_festival_typicalfestival_screen';

  static const String appFestivalListfestivalCategoryScreen =
      '/app_festival_listfestival_category_screen';

  static const String appFestivalListfestivalCategoryTraditionalfestivalScreen =
      '/app_festival_listfestival_category_traditionalfestival_screen';

  static const String appFestivalListfestivalDetailsScreen =
      '/app_festival_listfestival_details_screen';

  static const String appLibraryAllPage = '/app_library_all_page';

  static const String appLibraryAllTabContainerPage =
      '/app_library_all_tab_container_page';

  static const String appLibraryPicturePage = '/app_library_picture_page';

  static const String appLibraryVideoPage = '/app_library_video_page';

  static const String appLibraryPictureDetailsScreen =
      '/app_library_picture_details_screen';

  static const String appLibraryVideoDetailsScreen =
      '/app_library_video_details_screen';

  static const String appLibraryPictureDetailsRotationScreen =
      '/app_library_picture_details_rotation_screen';

  static const String appLibraryVideoDetailsRotationScreen =
      '/app_library_video_details_rotation_screen';

  static const String appLibraryPictureDetailsFullheightScreen =
      '/app_library_picture_details_fullheight_screen';

  static const String cmsQlbandoDsbandoXoaScreen =
      '/cms_qlbando_dsbando_xoa_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: appSplashScreen,
      page: () => AppSplashScreen(),
      bindings: [
        AppSplashBinding(),
      ],
    ),
    GetPage(
      name: appHomeContainerScreen,
      page: () => AppHomeContainerScreen(),
      bindings: [
        AppHomeContainerBinding(),
      ],
    ),
    GetPage(
      name: appSearchScreen,
      page: () => AppSearchScreen(),
      bindings: [
        AppSearchBinding(),
      ],
    ),
    GetPage(
      name: appNewsHuenewsScreen,
      page: () => AppNewsHuenewsScreen(),
      bindings: [
        AppNewsHuenewsBinding(),
      ],
    ),
    GetPage(
      name: appNewsComingfestivalScreen,
      page: () => AppNewsComingfestivalScreen(),
      bindings: [
        AppNewsComingfestivalBinding(),
      ],
    ),
    GetPage(
      name: appNewsHuenewsDetailsScreen,
      page: () => AppNewsHuenewsDetailsScreen(),
      bindings: [
        AppNewsHuenewsDetailsBinding(),
      ],
    ),
    GetPage(
      name: appNewsHuenewsDetailsOneScreen,
      page: () => AppNewsHuenewsDetailsOneScreen(),
      bindings: [
        AppNewsHuenewsDetailsOneBinding(),
      ],
    ),
    GetPage(
      name: appFestivalTypicalfestivalScreen,
      page: () => AppFestivalTypicalfestivalScreen(),
      bindings: [
        AppFestivalTypicalfestivalBinding(),
      ],
    ),
    GetPage(
      name: appFestivalListfestivalCategoryScreen,
      page: () => AppFestivalListfestivalCategoryScreen(),
      bindings: [
        AppFestivalListfestivalCategoryBinding(),
      ],
    ),
    GetPage(
      name: appFestivalListfestivalCategoryTraditionalfestivalScreen,
      page: () => AppFestivalListfestivalCategoryTraditionalfestivalScreen(),
      bindings: [
        AppFestivalListfestivalCategoryTraditionalfestivalBinding(),
      ],
    ),
    GetPage(
      name: appFestivalListfestivalDetailsScreen,
      page: () => AppFestivalListfestivalDetailsScreen(),
      bindings: [
        AppFestivalListfestivalDetailsBinding(),
      ],
    ),
    GetPage(
      name: appLibraryPictureDetailsScreen,
      page: () => AppLibraryPictureDetailsScreen(),
      bindings: [
        AppLibraryPictureDetailsBinding(),
      ],
    ),
    GetPage(
      name: appLibraryVideoDetailsScreen,
      page: () => AppLibraryVideoDetailsScreen(),
      bindings: [
        AppLibraryVideoDetailsBinding(),
      ],
    ),
    GetPage(
      name: appLibraryPictureDetailsRotationScreen,
      page: () => AppLibraryPictureDetailsRotationScreen(),
      bindings: [
        AppLibraryPictureDetailsRotationBinding(),
      ],
    ),
    GetPage(
      name: appLibraryVideoDetailsRotationScreen,
      page: () => AppLibraryVideoDetailsRotationScreen(),
      bindings: [
        AppLibraryVideoDetailsRotationBinding(),
      ],
    ),
    GetPage(
      name: appLibraryPictureDetailsFullheightScreen,
      page: () => AppLibraryPictureDetailsFullheightScreen(),
      bindings: [
        AppLibraryPictureDetailsFullheightBinding(),
      ],
    ),
    GetPage(
      name: cmsQlbandoDsbandoXoaScreen,
      page: () => CmsQlbandoDsbandoXoaScreen(),
      bindings: [
        CmsQlbandoDsbandoXoaBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => AppSplashScreen(),
      bindings: [
        AppSplashBinding(),
      ],
    )
  ];
}
