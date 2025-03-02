// select_screen_view_model.dart
import 'package:flutter/material.dart';

class SelectScreenViewModel extends ChangeNotifier {
  bool _isOn = false;

  bool get isOn => _isOn;

  void toggleSwitch(bool value) {
    _isOn = value;
    notifyListeners();
  }
}
