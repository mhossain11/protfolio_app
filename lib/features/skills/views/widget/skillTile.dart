import 'package:flutter/material.dart';
import '../../../../core/widgets/glass_card.dart';

class SkillTile extends StatelessWidget {
  final String skillName;

  const SkillTile({
    super.key,
    required this.skillName,
  });

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      //borderRadius: 16,
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 14,
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 15,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xFF3B82F6),
                  Color(0xFF06B6D4),
                ],
              ),
            ),
            child: const Icon(
              Icons.code,
              color: Colors.white,
              size: 14,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              skillName,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}