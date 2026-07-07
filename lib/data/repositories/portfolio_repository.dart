import 'package:flutter/material.dart';

import '../models/experience_model.dart';
import '../models/project_model.dart';
import '../models/service_model.dart';
import '../models/skill_model.dart';

class PortfolioRepository {
  List<String> titles = const [
    'Flutter Developer',
    'Backend Developer',
    'Data Analytics Learner',
  ];

  List<SkillModel> skills = const [
    SkillModel(name: 'Kotlin', category: 'Languages', percent: .94),
    SkillModel(name: 'Dart', category: 'Languages', percent: .94),
    SkillModel(name: 'JavaScript', category: 'Languages', percent: .94),
    SkillModel(name: 'Python', category: 'Languages', percent: .94),

    SkillModel(name: 'MySQL', category: 'Database', percent: .82),
    SkillModel(name: 'SQLite', category: 'Database', percent: .84),
    SkillModel(name: 'Hive', category: 'Database', percent: .78),
    SkillModel(name: 'Firestore', category: 'Database', percent: .80),

    SkillModel(name: 'Django', category: 'Backend Integration', percent: .94),
    SkillModel(name: 'Node.js', category: 'Backend Integration', percent: .94),
    SkillModel(name: 'Firebase', category: 'Backend Integration', percent: .94),


    SkillModel(name: 'Flutter', category: 'Mobile Development', percent: .94),
    SkillModel(name: 'Android Studio', category: 'Mobile Development', percent: .94),
    SkillModel(name: 'SQLite', category: 'Mobile Development', percent: .94),
    SkillModel(name: 'Responsive Design', category: 'Mobile Development', percent: .94),
    SkillModel(name: 'UI/UX Design', category: 'Mobile Development', percent: .94),


    SkillModel(name: 'Android Studio', category: 'Tools', percent: .90),
    SkillModel(name: 'VS Code', category: 'Tools', percent: .92),
    SkillModel(name: 'Git', category: 'Tools', percent: .88),
    SkillModel(name: 'GitHub', category: 'Tools', percent: .86),
    SkillModel(name: 'Postman', category: 'Tools', percent: .84),


    SkillModel(name: 'Python', category: 'Data Analytics', percent: .72),
    SkillModel(name: 'Statistics', category: 'Data Analytics', percent: .70),
    SkillModel(name: 'Pandas', category: 'Data Analytics', percent: .68),
    SkillModel(name: 'NumPy', category: 'Data Analytics', percent: .66),
    SkillModel(name: 'Power BI', category: 'Data Analytics', percent: .64),
  ];

  List<ExperienceModel> experiences = const [
    ExperienceModel(
      role: 'Flutter Developer',
      company: 'LiberalSoft & Tech Solutions',
      period: '2025 - Present',
      summary:
          'Building production mobile and web applications with Flutter, GetX, Firebase, REST APIs, and performance-focused UI architecture.',
    ),
    ExperienceModel(
      role: 'Junior Android Developer',
      company: 'Digital Decoder Ltd',
      period: '2022 - 2024',
      summary:
          'Delivered Android app features, integrated APIs, fixed production issues, and collaborated with design and backend teams.',
    ),
  ];

  List<ProjectModel> projects = const [
    ProjectModel(
      title: 'E-Commerce App',
      category: 'Mobile',
      description:
          'Feature-rich shopping app with cart, checkout, auth, order tracking, admin-ready architecture, and Firebase/API integrations.',
      technologies: ['Flutter', 'GetX', 'Firebase', 'REST API'],
      githubUrl: 'https://github.com/syedfaysal/ecommerce-app',
      liveUrl: 'https://example.com/ecommerce',
    ),
    ProjectModel(
      title: 'Cloud Slider App',
      category: 'Web',
      description:
          'Cloud-powered media slider management system with realtime updates, dashboard controls, and polished responsive UI.',
      technologies: ['Flutter Web', 'Firebase', 'Cloud Storage'],
      githubUrl: 'https://github.com/syedfaysal/cloud-slider',
      liveUrl: 'https://example.com/cloud-slider',
    ),
    ProjectModel(
      title: 'Quotation Management System',
      category: 'Backend',
      description:
          'Business quotation workflow with customer records, quote generation, approval states, PDF export, and API-first backend.',
      technologies: ['Django', 'MySQL', 'REST API', 'Flutter'],
      githubUrl: 'https://github.com/syedfaysal/quotation-system',
      liveUrl: 'https://example.com/quotation',
    ),
    ProjectModel(
      title: 'Islamic App',
      category: 'Mobile',
      description:
          'Clean Islamic utility app with prayer resources, saved preferences, offline content, and accessible mobile-first design.',
      technologies: ['Flutter', 'SQLite', 'Hive'],
      githubUrl: 'https://github.com/syedfaysal/islamic-app',
      liveUrl: 'https://example.com/islamic-app',
    ),
  ];

  List<ServiceModel> services = const [
    ServiceModel(
      title: 'Flutter Mobile App Development',
      description:
          'Cross-platform Android and iOS apps with clean architecture and polished UI.',
      icon: Icons.phone_android,
    ),
    ServiceModel(
      title: 'Flutter Web Development',
      description:
          'Responsive web apps and portfolio sites optimized for modern browsers.',
      icon: Icons.web,
    ),
    ServiceModel(
      title: 'Backend API Development',
      description:
          'REST APIs, auth flows, database design, and dashboard-ready services.',
      icon: Icons.dns,
    ),
    ServiceModel(
      title: 'Firebase Integration',
      description:
          'Auth, Firestore, Cloud Storage, push notifications, analytics, and hosting.',
      icon: Icons.local_fire_department,
    ),
    ServiceModel(
      title: 'App Maintenance',
      description:
          'Bug fixing, refactoring, performance optimization, and release support.',
      icon: Icons.build_circle,
    ),
    ServiceModel(
      title: 'UI/UX Implementation',
      description:
          'Pixel-aware implementation from Figma/design concepts into Flutter widgets.',
      icon: Icons.design_services,
    ),
    ServiceModel(
      title: 'Data Dashboard Development',
      description:
          'Actionable dashboards and reports using analytics tooling and clean data flows.',
      icon: Icons.analytics,
    ),
  ];
}
