import 'package:flutter/cupertino.dart';

class SkillCategory {
  final String title;
  final List<SkillItem> skills;

  SkillCategory({
    required this.title,
    required this.skills,
  });
}

class SkillItem {
  final IconData icon;
  final String name;

  SkillItem({
    required this.icon,
    required this.name,
  });
}