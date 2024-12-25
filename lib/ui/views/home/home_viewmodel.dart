import 'package:flutter_ecommerce_tokoto/app/app.bottomsheets.dart';
import 'package:flutter_ecommerce_tokoto/app/app.dialogs.dart';
import 'package:flutter_ecommerce_tokoto/app/app.locator.dart';
import 'package:flutter_ecommerce_tokoto/app/app.router.dart';
import 'package:flutter_ecommerce_tokoto/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void navigateTo(int id) {
    switch (id) {
      case 1:
        _navigationService.navigateToScreenListView();
        break;
      case 2:
        _navigationService.navigateToMaterialDesignView();
        break;
      case 3:
        _dialogService.showDialog(title: 'Under Maintenance');
        break;
      case 4:
        _navigationService.navigateToCLoginView();
        break;
      default:
        _dialogService.showDialog(title: 'Page Not Available');
    }
  }
}
