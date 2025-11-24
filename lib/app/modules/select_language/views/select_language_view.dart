import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_and_theme_learn/app/data/app_color.dart';

import '../../../data/languages.dart';
import '../controllers/select_language_controller.dart';

class SelectLanguageView extends GetView<SelectLanguageController> {
  const SelectLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    Languages languages = Languages();
    final localeKeys = languages.keys.keys.toList();
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(title: const Text('Language'), centerTitle: true),
      body: ListView.builder(
        itemCount: localeKeys.length,
        itemBuilder: (context, index) {
          final locale = localeKeys[index];
          final data = languages.keys[locale]!;
          return Card(
            color: AppColor.primaryColor,
            child: ListTile(
              onTap: () {
                Get.updateLocale(Locale(locale.split('_')[0], locale.split('_')[1]));
                Get.back();
              },
              title: Text(data["countryLanguage"] ?? ""),
            ),
          );
        },
      ),
    );
  }
}
