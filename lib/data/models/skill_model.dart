class SkillModel {
  const SkillModel( {
    required this.name,
    this.emoji ="",
    required this.category,
    required this.percent,
  });
  final String name;
  final String? emoji;
  final String category;
  final double percent;
}
