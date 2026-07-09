import 'package:flutter/material.dart';

import '../../data/models/project_model.dart';
import 'animated_container_card.dart';
import 'custom_button.dart';
import 'glass_card.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
    required this.onGithub,
    required this.image,
   //  this.onLive,
  });
  final ProjectModel project;
  final VoidCallback onGithub;
  final String image;
 // final VoidCallback? onLive;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return AnimatedContainerCard(
      child: GlassCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                /*gradient: LinearGradient(
                  colors: [colors.primary, colors.secondary],
                ),*/
              ),
              child: Center(
                  child: Image.asset(image,fit: BoxFit.contain,)),
            ),
            const SizedBox(height: 18),
            Text(
              project.title,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 10),
            Text(project.description,
                style: const TextStyle(height: 1.6)),
            const SizedBox(height: 14),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: project.technologies
                  .map((tech) => Chip(label: Text(tech)))
                  .toList(),
            ),
            const SizedBox(height: 30,),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                CustomButton(
                  label: 'GitHub',
                  icon: Icons.code,
                  onPressed: onGithub,
                  filled: false,
                ),
                /*CustomButton(
                  label: 'Live Demo',
                  icon: Icons.open_in_new,
                  onPressed: onLive!,
                ),*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}
