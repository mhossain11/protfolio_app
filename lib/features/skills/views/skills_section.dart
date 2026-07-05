import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/section_title.dart';
import '../../../core/widgets/skill_card.dart';
import '../../../core/utils/responsive.dart';
import '../../../data/repositories/portfolio_repository.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = Get.find<PortfolioRepository>();
    final grouped = <String, List<dynamic>>{};
    for (final skill in repo.skills) {
      grouped.putIfAbsent(skill.category, () => []).add(skill);
    }
    return ResponsiveConstrainedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            eyebrow: 'Skills',
            title: 'Modern stack for mobile, backend, and analytics.',
            subtitle:
                'Animated percentage bars show practical confidence across core tools and technologies.',
          ),
          const SizedBox(height: 28),
          for (final entry in grouped.entries) ...[
            Padding(
              padding: const EdgeInsets.only(bottom: 14, top: 10),
              child: Text(
                entry.key,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: entry.value.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.isMobileLayout
                    ? 1
                    : context.isTabletLayout
                    ? 2
                    : 3,
                childAspectRatio: 4.2,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14,
              ),
              itemBuilder: (_, index) => SkillCard(skill: entry.value[index]),
            ),
          ],
        ],
      ),
    );
  }
}
