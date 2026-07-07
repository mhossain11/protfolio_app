

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syed_faysal_portfolio/features/skills/views/widget/skillCategoryCard.dart';

import '../../../core/utils/responsive.dart';
import '../../../core/widgets/section_title.dart';
import '../../../data/repositories/portfolio_repository.dart';
import '../../../responsive.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = Get.find<PortfolioRepository>();

    final grouped = <String, List<dynamic>>{};

    //Data List
    for (final skill in repo.skills) {
      grouped.putIfAbsent(skill.category, () => []).add(skill);
    }

    return ResponsiveConstrainedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SectionTitle(
            eyebrow: 'Technical Skills',
            title: 'Technologies & tools I work with to bring ideas to life',
          ),

          const SizedBox(height: 10),

      Wrap(
        spacing: 24,
        runSpacing: 24,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: grouped.entries.map((entry) {
          return SizedBox(
            width: Responsive.isMobile(context)
                ? Responsive.width(context) * 0.5
                : Responsive.width(context) * 0.2,
            child: Center(
              child: SkillCategoryCard(
                title: entry.key,
                skills: entry.value,
              ),
            ),
          );
        }).toList(),
      )
        ],
      ),
    );
  }
}
