import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:localization_and_theme_learn/app/data/app_color.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: const Text('Localization & Theme'),
        actions: [
          Obx(
            () => IconButton(
              onPressed: () {
                controller.changeTheme();
              },
              icon: Icon(
                controller.theme.value
                    ? Icons.light_mode
                    : Icons.dark_mode_outlined,
                color: AppColor.iconColor,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.SELECT_LANGUAGE);
            },
            icon: Icon(Icons.language, color: AppColor.iconColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Obx(
              () => ListTile(
                tileColor: controller.theme.value
                    ? AppColor.primaryColor
                    : AppColor.secondaryColor,
                title: Text("countryName".tr),
                subtitle: Text("countryLanguage".tr),
              ),
            ),
            SizedBox(height: 8),
            Obx(
              () => Container(
                padding: EdgeInsets.all(12.0),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: controller.theme.value
                      ? AppColor.primaryColor
                      : AppColor.secondaryColor,
                ),
                child: Text(
                  "message".tr,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
