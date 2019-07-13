Provides service locator pattern implementation for dart.

## Usage

A simple usage example:

```dart
import 'package:service_locator/service_locator.dart';

main() {

  ServiceContainer container = ServiceContainer();
  container.add(AuthService());
  ServiceContainer scope = ServiceContainer(parent: container);
  scope.add(HttpService());


  AuthService authService = scope.get<AuthService>();
  HttpService httpService = scope.get<HttpService>();


}

```

