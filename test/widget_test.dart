import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:syed_faysal_portfolio/features/home/controllers/home_controller.dart';
import 'package:syed_faysal_portfolio/main.dart';

void main() {
  testWidgets('portfolio app starts', (tester) async {
    await tester.pumpWidget(const PortfolioApp());
    expect(find.text('Syed Faysal Hossain'), findsWidgets);
    Get.find<HomeController>().stopTyping();
    await tester.pumpWidget(const SizedBox.shrink());
    Get.reset();
  });
}
