import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ecommerce_tokoto/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ScreenListViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
