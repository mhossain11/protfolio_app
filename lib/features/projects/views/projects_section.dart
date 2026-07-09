import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../core/utils/responsive.dart';
import '../../../core/widgets/project_card.dart';
import '../../../core/widgets/section_title.dart';
import '../../../features/home/controllers/home_controller.dart';
import '../../../responsive.dart';
import 'project_controller.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProjectController>();
    final home = Get.find<HomeController>();
    final searchController = TextEditingController();
    return ResponsiveConstrainedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            eyebrow: 'Projects',
            title: 'Production-style work samples.',
            subtitle:
                'Filter and search projects by category, title, and technology stack.',
          ),
          const SizedBox(height: 22),
          //Project Category
          Obx(
            () => Wrap(
              spacing: 10,
              runSpacing: 10,
              children: controller.categories
                  .map(
                    (cat) => ChoiceChip(
                      label: Text(cat),
                      selected: controller.selectedCategory.value == cat,
                      onSelected: (_) =>
                          controller.selectedCategory.value = cat,
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(height: 18),
          //Search
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: TextField(
              controller: searchController,
              onChanged: (value) => controller.search.value = value,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: 'Search projects',
              ),
            ),
          ),
          const SizedBox(height: 24),

          //Project List
          Obx(
            () => MasonryGridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: context.projectColumns,
              mainAxisSpacing: 18,
              crossAxisSpacing: 18,
              itemCount: controller.filteredProjects.length,
              itemBuilder: (_, index) {
                final project = controller.filteredProjects[index];

                return ProjectCard(
                  project: project,
                  onGithub: () => home.openUrl(project.githubUrl),
                  image: project.image,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
