import 'package:service_locator/service_locator.dart';

abstract class ServiceConfiguration {
  Iterable<ServiceEntry> getConfiguredServices(ServiceProvider provider);
}