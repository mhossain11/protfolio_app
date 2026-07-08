class ProjectModel {
  const ProjectModel({
    required this.title,
    required this.category,
    required this.description,
    required this.technologies,
    required this.githubUrl,
    //this.liveUrl="",
    required this.image,
  });
  final String title;
  final String category;
  final String image;
  final String description;
  final List<String> technologies;
  final String githubUrl;
 // final String? liveUrl;
}
