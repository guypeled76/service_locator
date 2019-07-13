import 'package:service_locator/service_locator.dart';

import 'services/auth.dart';
import 'services/http.dart';

main() {

  ServiceContainer container = ServiceContainer();
  container.add(AuthService());
  ServiceContainer scope = ServiceContainer(parent: container);
  scope.add(HttpService());


  AuthService authService = scope.get<AuthService>();
  HttpService httpService = scope.get<HttpService>();


}
