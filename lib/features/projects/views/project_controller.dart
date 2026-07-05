import 'package:get/get.dart';

import '../../../data/models/project_model.dart';
import '../../../data/repositories/portfolio_repository.dart';

class ProjectController extends GetxController {
  ProjectController(this.repository);
  final PortfolioRepository repository;
  final selectedCategory = 'All'.obs;
  final search = ''.obs;

  List<String> get categories => [
    'All',
    ...repository.projects.map((p) => p.category).toSet(),
  ];
  List<ProjectModel> get filteredProjects =>
      repository.projects.where((project) {
        final byCategory =
            selectedCategory.value == 'All' ||
            project.category == selectedCategory.value;
        final query = search.value.toLowerCase();
        final bySearch =
            query.isEmpty ||
            project.title.toLowerCase().contains(query) ||
            project.technologies.join(' ').toLowerCase().contains(query);
        return byCategory && bySearch;
      }).toList();
}
