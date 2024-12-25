import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:stacked/stacked.dart';

class ScreenListViewModel extends BaseViewModel {
  pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpeg', 'jpg', 'png'],
    );

    if (result != null && result.files.single.path != null) {
      PlatformFile file = result.files.first;

      log('File Name => ${file.name}');
      log('File Bytes => ${file.bytes}');
      log('File Size => ${file.size}');
      log('File Extension => ${file.extension}');
      log('File Path => ${file.path}');
    }
  }

  // final AuthService _authService;
  // int refreshCount = 0;
  //
  // LoginViewModel(this._authService);
  //
  // Future<void> login(String username, String password) async {
  //   setBusy(true);
  //   bool success = await _authService.login(username, password);
  //   if (success) {
  //     refreshCount = 0;
  //     notifyListeners();
  //   }
  //   setBusy(false);
  // }
  //
  // void logout() {
  //   _authService.logout();
  //   notifyListeners();
  // }
  //
  // String get accessToken => _authService.accessToken ?? 'No Token';
  // String get refreshToken => _authService.refreshToken ?? 'No Refresh Token';
  // int get refreshAttempts => _authService.refreshCount;
  //
  // String get accessTokenExpiry {
  //   final expiry = _authService.accessTokenExpiry;
  //   return expiry != null
  //       ? '${expiry.difference(DateTime.now()).inSeconds}s'
  //       : 'N/A';
  // }
  //
  // String get refreshTokenExpiry {
  //   final expiry = _authService.refreshTokenExpiry;
  //   return expiry != null
  //       ? '${expiry.difference(DateTime.now()).inSeconds}s'
  //       : 'N/A';
  // }
}
