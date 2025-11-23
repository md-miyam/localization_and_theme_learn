import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool theme = true.obs;

  void changeTheme (){
    theme.value = !theme.value;
  }
}
