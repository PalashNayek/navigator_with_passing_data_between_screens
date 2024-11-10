
import '../di/setupLocator.dart';
import '../navigator_service/NavigationService.dart';

class HomeViewModel {
  final NavigationService _navigationService = getIt<NavigationService>();

  void navigateToSecondScreenWithMessage(String message) {
    _navigationService.navigateTo('/second', arguments: message);
  }
}
