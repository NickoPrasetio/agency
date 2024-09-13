import 'package:agency/injection_module/data_module.dart';
import 'package:agency/injection_module/domain_module.dart';
import 'package:agency/injection_module/network_module.dart';
import 'package:agency/injection_module/presentation_module.dart';
import 'package:get_it/get_it.dart';

GetIt injector = GetIt.instance;

void initModule() {
  networkModule();
  domainModule();
  dataModule();
  presentationModule();
}
