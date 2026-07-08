import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:syed_faysal_portfolio/responsive.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/utils/responsive.dart';
import '../../../core/widgets/glass_card.dart';
import '../../../core/widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveConstrainedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            eyebrow: 'About Me',
            title: 'Flutter Developer | Backend Engineer | Data Analytics Learner',
            centerSubtitle:AppConstants.subTitle,
          ),
          const SizedBox(height: 26),
          LayoutBuilder(
            builder: (context, constraints) {
              const cards = [
                _AboutTile(
                  title: 'Professional Summary',
                  text: AppConstants.summary,
                  icon: Icons.auto_awesome,
                ),
                _AboutTile(
                  title: 'Education',
                  text:
                      'Continuous learner with a strong focus on software engineering, backend APIs, and applied data analytics.',
                  icon: Icons.school,
                ),
                _AboutTile(
                  title: 'Career Goals',
                  text:
                      'Passionate about building reliable software products and advancing my skills in Flutter, backend development, and data analytics.',
                  icon: Icons.flag,
                ),
                _AboutTile(
                  title: 'Experience',
                  text:
                      '3 years building Android, Flutter, API-integrated, and production-oriented applications.',
                  icon: Icons.timeline,
                ),
              ];
              return MasonryGridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: Responsive.isMobile(context) ? 1 : 2,
                mainAxisSpacing: 18,
                crossAxisSpacing: 18,
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return cards[index];
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _AboutTile extends StatelessWidget {
  const _AboutTile({
    required this.title,
    required this.text,
    required this.icon,
  });
  final String title;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) => GlassCard(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(child: Icon(icon)),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w800)),
              const SizedBox(height: 8),
              Text(text, style: const TextStyle(height: 1.55)),
            ],
          ),
        ),
      ],
    ),
  );
}
