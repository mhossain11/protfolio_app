import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../core/utils/responsive.dart';
import '../../../core/widgets/section_title.dart';
import '../../../core/widgets/service_card.dart';
import '../../../data/repositories/portfolio_repository.dart';
import '../../../responsive.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final services = Get.find<PortfolioRepository>().services;
    return ResponsiveConstrainedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            eyebrow: 'Services',
            title: 'Ways I can help your product move faster.',
            subtitle:
                'From Flutter apps to backend APIs, Firebase, maintenance, implementation, and dashboards.',
          ),
          const SizedBox(height: 28),
          /*GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: services.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: context.isMobileLayout
                  ? 1
                  : context.isTabletLayout
                  ? 2
                  : 3,
              mainAxisExtent: 310,
              crossAxisSpacing: 18,
              mainAxisSpacing: 18,
            ),
            itemBuilder: (_, index) => ServiceCard(service: services[index]),
          ),*/
          MasonryGridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: Responsive.isMobile(context)
                ? 1 : 3,
            mainAxisSpacing: 18,
            crossAxisSpacing: 18,
            itemCount: services.length,
            itemBuilder: (_, index) {
              return ServiceCard(
                service: services[index],
              );
            },
          )
        ],
      ),
    );
  }
}
