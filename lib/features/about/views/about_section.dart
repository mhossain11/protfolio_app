import 'package:flutter/material.dart';

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
            title: 'Software developer with product-minded execution.',
            subtitle:
                'I build reliable Flutter applications, backend services, and analytics-friendly systems with clean code and scalable architecture.',
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
                      'Grow as a senior Flutter/backend engineer and deliver global-standard software for startups and businesses.',
                  icon: Icons.flag,
                ),
                _AboutTile(
                  title: 'Experience',
                  text:
                      '3+ years building Android, Flutter, API-integrated, and production-oriented applications.',
                  icon: Icons.timeline,
                ),
              ];
              return GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: constraints.maxWidth < 760 ? 1 : 2,
                childAspectRatio: constraints.maxWidth < 760 ? 2.35 : 2.8,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18,
                children: cards,
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
