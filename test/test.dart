import 'package:service_locator/service_locator.dart';
import 'package:test/test.dart';

import 'services/auth.dart';

void main() {
  group('A group of tests', () {
    ServiceContainer container;

    setUp(() {
      container = ServiceContainer();
      container.add(AuthService());
    });

    test('First Test', () {
      expect(container.get<AuthService>(), isNotNull);
    });
  });
}
