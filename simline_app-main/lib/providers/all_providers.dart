import 'package:flutter/material.dart';

final class AllProviders extends ChangeNotifier {
  ////////////////---------- All Filter Bottom Sheet ------------///////////////
  int selectedDeliveryTime = -1;
  void deliveryTimeSelectTab({required index}) {
    selectedDeliveryTime = index;
    notifyListeners();
  }

  int selectedSoftwareTool = -1;
  void softwareToolSelectTab({required index}) {
    selectedSoftwareTool = index;
    notifyListeners();
  }


 ////////////////---------- Jobs Screen ------------///////////////
  int selectedIndex = 0;
  void setSelectedTabIndex({required index}) {
    selectedIndex = index;
    notifyListeners();
  }
}
