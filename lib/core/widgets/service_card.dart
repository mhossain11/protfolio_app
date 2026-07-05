import 'package:flutter/material.dart';

import '../../data/models/service_model.dart';
import 'animated_container_card.dart';
import 'glass_card.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.service});
  final ServiceModel service;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainerCard(
      child: GlassCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(radius: 25, child: Icon(service.icon)),
            const SizedBox(height: 18),
            Text(
              service.title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 10),
            Text(service.description, style: const TextStyle(height: 1.6)),
          ],
        ),
      ),
    );
  }
}
