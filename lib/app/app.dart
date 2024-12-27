import 'package:flutter_ecommerce_tokoto/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:flutter_ecommerce_tokoto/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:flutter_ecommerce_tokoto/ui/views/compass/c_login/c_login_view.dart';
import 'package:flutter_ecommerce_tokoto/ui/views/home/home_view.dart';
import 'package:flutter_ecommerce_tokoto/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_ecommerce_tokoto/ui/views/material_design/material_design_view.dart';
import 'package:flutter_ecommerce_tokoto/ui/views/screen_list/screen_list_view.dart';
import 'package:flutter_ecommerce_tokoto/ui/views/compass/c_help_center/c_help_center_view.dart';

import '../ui/views/compass/c_forgot_password/c_forgot_password_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: MaterialDesignView),
    MaterialRoute(page: ScreenListView),
    MaterialRoute(page: CLoginView),
    MaterialRoute(page: CHelpCenterView),
    MaterialRoute(page: CForgotPasswordView),
    MaterialRoute(page: CForgotPasswordView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
