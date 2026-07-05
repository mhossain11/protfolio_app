import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/responsive.dart';
import '../../../core/widgets/experience_card.dart';
import '../../../core/widgets/section_title.dart';
import '../../../data/repositories/portfolio_repository.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final experiences = Get.find<PortfolioRepository>().experiences;
    return ResponsiveConstrainedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            eyebrow: 'Experience',
            title: 'Timeline of professional growth.',
            subtitle:
                'Practical industry experience in Flutter, Android, integrations, and production delivery.',
          ),
          const SizedBox(height: 28),
          for (var i = 0; i < experiences.length; i++)
            ExperienceCard(
              experience: experiences[i],
              isLast: i == experiences.length - 1,
            ),
        ],
      ),
    );
  }
}
