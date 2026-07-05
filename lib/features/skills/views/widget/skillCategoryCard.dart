import 'package:flutter/material.dart';
import 'package:syed_faysal_portfolio/core/widgets/glass_card.dart';
import 'package:syed_faysal_portfolio/features/skills/views/widget/skillTile.dart';

class SkillCategoryCard extends StatelessWidget {
  final String title;
  final List<dynamic> skills;

  const SkillCategoryCard({
    super.key,
    required this.title,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [
                Color(0xFF3B82F6),
                Color(0xFF06B6D4),
              ],
            ).createShader(bounds),
            child: const Text(
              '',
              style: TextStyle(color: Colors.white),
            ),
          ),

          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),

          const SizedBox(height: 14),

          Divider(
            color: Colors.white.withOpacity(.1),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: skills.length,
              separatorBuilder: (_, __) =>
              const SizedBox(height: 12),
              itemBuilder: (_, index) {
                return SkillTile(
                  skillName: skills[index].name,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}