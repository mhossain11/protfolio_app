import 'package:flutter/cupertino.dart';

class SkillCategoryModel {
  final String title;
  final List<SkillItem> skills;

  SkillCategoryModel({
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