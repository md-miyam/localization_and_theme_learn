import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool theme = true.obs;

  void changeTheme (){
    theme.value = !theme.value;
    if(theme.value == true){
      Get.changeTheme(ThemeData.light());
    }else{
      Get.changeTheme(ThemeData.dark());
    }
  }
}
