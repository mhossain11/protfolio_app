import 'package:get/get.dart';

import '../../../core/services/email_service.dart';
import '../../../core/services/github_service.dart';
import '../../../core/services/url_service.dart';
import '../../../core/services/visitor_service.dart';
import '../../../data/repositories/portfolio_repository.dart';
import '../../contact/views/contact_controller.dart';
import '../../projects/views/project_controller.dart';
import '../controllers/home_controller.dart';
import '../controllers/theme_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PortfolioRepository(), permanent: true);
    Get.put(UrlService(), permanent: true);
    Get.put(GithubService(), permanent: true);
    Get.put(VisitorService(), permanent: true);
    Get.put(EmailService(), permanent: true);
    Get.put(ThemeController(), permanent: true);
    Get.put(HomeController(Get.find(), Get.find(), Get.find(), Get.find()));
    Get.put(ProjectController(Get.find()));
    Get.put(ContactController(Get.find()));
  }
}
