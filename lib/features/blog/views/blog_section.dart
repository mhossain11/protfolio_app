import 'package:flutter/material.dart';

import '../../../core/utils/responsive.dart';
import '../../../core/widgets/glass_card.dart';
import '../../../core/widgets/section_title.dart';

class BlogSection extends StatelessWidget {
  const BlogSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveConstrainedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            eyebrow: 'Blog',
            title: 'Writing coming soon.',
            subtitle:
                'Future posts will cover Flutter architecture, backend APIs, and data analytics learning notes.',
          ),
          SizedBox(height: 18),
          GlassCard(child: Text('No posts published yet.')),
        ],
      ),
    );
  }
}
