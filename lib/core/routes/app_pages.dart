import 'package:get/get.dart';

import '../../features/home/views/home_view.dart';

class AppRoutes {
  const AppRoutes._();
  static const home = '/';
}

class AppPages {
  const AppPages._();
  static final pages = [
    GetPage(name: AppRoutes.home,
        page: () => const HomeView()),
  ];
}
