import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:localization_and_theme_learn/app/data/app_color.dart';

import '../controllers/select_language_controller.dart';

class SelectLanguageView extends GetView<SelectLanguageController> {
  const SelectLanguageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: const Text('Language'),
        centerTitle: true,
      ),
      body: ListView.builder(itemCount: 5,itemBuilder: (context, index) => Card(
        color: AppColor.primaryColor,
        child: ListTile(
          onTap: (){
            Get.back();
          },
          title: Text("English"),
        ),
      ),),
    );
  }
}
