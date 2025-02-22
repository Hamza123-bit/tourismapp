import 'package:flutter/material.dart';
import 'package:signuppage/core/base_view_model/base_view_model.dart';

class RoomsViewmodel extends BaseViewModel {
  TabController? tabController;

  /// Initializes the TabController with the given [vsync] TickerProvider.
  ///
  /// The TabController is used to control the tabs in the home screen.
  ///
  /// This function should be called in the [initState] method of the
  /// widget that is using this view model.
  ///
  /// When the TabController is initialized, it will notify the listeners
  /// that the state has changed, which will cause the UI to be rebuilt.

  void initTabController(TickerProvider vsync) {
    tabController = TabController(length: 2, vsync: vsync);
    notifyListeners();
  }

  int selectedIndex = 0;

  void setSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners(); // UI update ke liye
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }
}
