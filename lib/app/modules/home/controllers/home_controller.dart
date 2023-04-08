import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../widgets/profile.dart';

class HomeController extends GetxController {
  RxInt indexWidget = 0.obs;

  void changeIndexBottomNav(int index) {
    indexWidget.value = index;
  }

   List<Widget> myWidgets = [
   
    const Center(
      child: Text(
      'Home',
        style: TextStyle(fontSize: 20),
      ),
    ),
    const Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 20),
      ),
    ),
    const Center(
      child: Text(
      'Videos',
        style: TextStyle(fontSize: 20),
      ),
    ),
    const Center(
      child: Text(
      'Rells',
        style: TextStyle(fontSize: 20),
      ),
    ),
    const ProfileWidget(),
  ];
}
