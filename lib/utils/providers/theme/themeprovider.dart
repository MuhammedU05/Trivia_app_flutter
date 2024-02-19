import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isLightTheme = true;

  bool get isLightTheme => _isLightTheme;

  // Color primaryBackground = isLightTheme ? Light.background : Dark.background;

  void changeTheme() {
    // print('ssssssss');
    try {
      _isLightTheme = !_isLightTheme;
      // notifyListeners();
      // print("Light theme changed : $isLightTheme");
      // print("__Light theme changed : $_isLightTheme");
      notifyListeners();
    } on Exception catch (e) {
      // notifyListeners();
      print("Error in changing Themes : $e");
    }
    Future.delayed(Duration.zero, () => notifyListeners());
    // notifyListeners();
  }
}
