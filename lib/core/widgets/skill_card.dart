import 'package:flutter/material.dart';

import '../../data/models/skill_model.dart';
import 'glass_card.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.skill});
  final SkillModel skill;

  @override
  Widget build(BuildContext context) {
    final percent = (skill.percent * 100).round();
    return GlassCard(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  skill.name,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              Text('$percent%'),
            ],
          ),
          const SizedBox(height: 14),
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: skill.percent),
            duration: const Duration(milliseconds: 900),
            curve: Curves.easeOutCubic,
            builder: (_, value, __) => LinearProgressIndicator(
              value: value,
              minHeight: 8,
              borderRadius: BorderRadius.circular(99),
            ),
          ),
        ],
      ),
    );
  }
}
