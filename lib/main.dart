import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes/app_pages.dart';
import 'core/theme/app_theme.dart';
import 'features/home/bindings/home_binding.dart';
import 'features/home/controllers/theme_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      init: ThemeController(),
      builder: (controller) => GetMaterialApp(
        title: 'Syed Faysal Hossain | Portfolio',
        debugShowCheckedModeBanner: false,
        initialBinding: HomeBinding(),
        initialRoute: AppRoutes.home,
        getPages: AppPages.pages,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: controller.themeMode,
        defaultTransition: Transition.fadeIn,
      ),
    );
  }
}
