
import 'package:get_it/get_it.dart';

import '../navigator_service/NavigationService.dart';
import '../view_models/HomeViewModel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton(() => NavigationService());
  getIt.registerFactory(() => HomeViewModel());
}
