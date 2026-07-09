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
    SkillModel(name: 'Kotlin',emoji:"⚡", category: 'Languages', percent: .94),
    SkillModel(name: 'Dart',emoji: "🎯", category: 'Languages', percent: .94),
    SkillModel(name: 'JavaScript',emoji: "🌐", category: 'Languages', percent: .94),
    SkillModel(name: 'Python',emoji: "🐍", category: 'Languages', percent: .94),

    SkillModel(name: 'SharedPreferences',emoji: "🗄️", category: 'Local Database', percent: .82),
    SkillModel(name: 'SQLite',emoji: "📊", category: 'Local Database', percent: .84),
    SkillModel(name: 'Hive',emoji: "📦", category: 'Local Database', percent: .78),

    SkillModel(name: 'Django', emoji: '🎯', category: 'Backend Integration', percent: .94),
    SkillModel(name: 'Node.js', emoji: '🟢', category: 'Backend Integration', percent: .94),
    SkillModel(name: 'Firebase', emoji: '🔥', category: 'Backend Integration', percent: .94),

    SkillModel(name: 'Flutter', emoji: '💙', category: 'Mobile Development', percent: .94),
    SkillModel(name: 'Android Studio', emoji: '🤖', category: 'Mobile Development', percent: .94),
    SkillModel(name: 'SQLite', emoji: '🗄️', category: 'Mobile Development', percent: .94),
    SkillModel(name: 'Responsive Design', emoji: '📱', category: 'Mobile Development', percent: .94),
    SkillModel(name: 'UI/UX Design', emoji: '🎨', category: 'Mobile Development', percent: .94),

    SkillModel(name: 'Python', emoji:"🐍", category: 'Data Analytics', percent: .72),
    SkillModel(name: 'Statistics', emoji: '📊', category: 'Data Analytics', percent: .70),
    SkillModel(name: 'Pandas', emoji: '🐼', category: 'Data Analytics', percent: .68),
    SkillModel(name: 'NumPy', emoji: '🔢', category: 'Data Analytics', percent: .66),
    SkillModel(name: 'Power BI', emoji: '📈', category: 'Data Analytics', percent: .64),

    SkillModel(name: 'Android Studio', emoji: '📱', category: 'Tools', percent: .90),
    SkillModel(name: 'VS Code', emoji: '🔧', category: 'Tools', percent: .92),
    SkillModel(name: 'Git/GitHub', emoji: '📚', category: 'Tools', percent: .88),
    SkillModel(name: 'Postman', emoji: '📮', category: 'Tools', percent: .84),
  ];

  List<ExperienceModel> experiences = const [

    ExperienceModel(
      role: 'Flutter Developer',
      company: 'LiberalSoft & Tech Solutions',
      period: '2024 - Present',
      summary:
          'Building production mobile and web applications with Flutter, GetX, Firebase, REST APIs, and performance-focused UI architecture.',
    ),
    ExperienceModel(
      role: 'Android Developer',
      company: 'Digital Decoder Ltd',
      period: '2023 - 2024',
      summary:
          'Delivered Android app features, integrated APIs, fixed production issues, and collaborated with design and backend teams.',
    ),

    ExperienceModel(
      role: 'Junior Android Developer',
      company: 'Optiview Solutions',
      period: '2022 - 2023',
      summary:
      'Developed and maintained Android mobile applications, implemented responsive UI designs, fixed bugs, added new features, and collaborated with backend and design teams to deliver reliable and user-friendly solutions.',
    ),
  ];

  List<ProjectModel> projects = const [
    ProjectModel(
      title: 'Portfolio WebApp',
      category: 'WebApp',
      image: 'assets/images/project_1.png',
      description:
      'A modern and responsive Portfolio App & Website designed to showcase personal information, skills, projects, experience, and achievements across mobile and web platforms with a professional user experience.',
      technologies: ['Flutter', 'GetX','REST API','Shared Preferences'],
      githubUrl: 'https://github.com/syedfaysal/ecommerce-app',
      //iveUrl: 'https://example.com/ecommerce',
    ),
    ProjectModel(
      title: 'InvoiceHub',
      category: 'WebApp',
      image: 'assets/images/project_1.png',
      description:
      'InvoiceHub is a modern Invoice & Challan Management App that enables businesses to create, manage, and track invoices and delivery challans efficiently through a clean, responsive, and user-friendly interface.',
      technologies: ['Flutter', 'GetX','REST API','Shared Preferences'],
      githubUrl: 'https://github.com/syedfaysal/ecommerce-app',
      //iveUrl: 'https://example.com/ecommerce',
    ),

    ProjectModel(
      title: 'E-Commerce App',
      category: 'Mobile',
      image: 'assets/images/project_1.png',
      description:
          'FA modern and user-friendly e-commerce application that allows customers to browse products, manage carts and wishlists, place orders, make secure payments, and track deliveries seamlessly.',
      technologies: ['Flutter', 'GetX','REST API','Shared Preferences'],
      githubUrl: 'https://github.com/syedfaysal/ecommerce-app',
     //iveUrl: 'https://example.com/ecommerce',
    ),
    ProjectModel(
      title: 'Medicine Ecommerce App',
      category: 'Mobile',
      image: 'assets/images/project_2.jpg',
      description:
          'A secure and user-friendly online pharmacy platform that enables customers to order medicines, upload prescriptions, consult healthcare professionals, and track deliveries from anywhere.',
      technologies: ['Flutter','Dart', 'Firebase', 'Cloud Storage','GetX'],
      githubUrl: 'https://github.com/syedfaysal/cloud-slider',
     //iveUrl: 'https://example.com/cloud-slider',
    ),
    ProjectModel(
      title: 'Agrogami App',
      category: 'Mobile',
      image: 'assets/images/project_3.png',
      description:
          'Agragami ERP is a smart and modern cooperative management system designed to simplify member management, savings, loans, accounting, reports, and daily operations. It helps organizations manage their activities efficiently through a secure, user-friendly, and real-time digital platform.',
      technologies: ['Flutter', 'Dart', 'REST API', 'Flutter'],
      githubUrl: 'https://github.com/syedfaysal/quotation-system',
     //iveUrl: 'https://example.com/quotation',
    ),
    ProjectModel(
      title: 'E-book UI App',
      category: 'Mobile',
      image: 'assets/images/project_4.png',
      description:
          'Developed an E-Book Shop App featuring book catalog browsing, category filtering, search functionality, shopping cart, secure checkout, and personalized digital library management.',
      technologies: ['Flutter', 'GetX', 'Hive'],
      githubUrl: 'https://github.com/syedfaysal/islamic-app',
     //iveUrl: 'https://example.com/islamic-app',
    ),

    ProjectModel(
      title: 'Islamic App',
      category: 'Mobile',
      image: 'assets/images/project_5.png',
      description:
      'An Islamic Book App that allows users to read a fixed PDF book, save their reading progress, bookmark pages, and continue reading from where they left off through a simple and user-friendly interface.',
      technologies: ['Flutter','Dart', 'PDF Viewer', 'Shared Preferences'],
      githubUrl: 'https://github.com/syedfaysal/islamic-app',
      //iveUrl: 'https://example.com/islamic-app',
    ),

    ProjectModel(
      title: 'Fitness Shop UI App ',
      category: 'Mobile',
      image: 'assets/images/project_6.png',
      description:
      'A modern Fitness Shop App UI design that showcases fitness products with an intuitive shopping experience, featuring product browsing, category filtering, cart management, and a clean, user-friendly interface.',
      technologies: ['Flutter', 'Dart','Hive','GetX'],
      githubUrl: 'https://github.com/syedfaysal/islamic-app',
      //iveUrl: 'https://example.com/islamic-app',
    ),

    ProjectModel(
      title: 'News App',
      category: 'Mobile',
      image: 'assets/images/project_7.png',
      description:
      'A modern News App that delivers the latest news through a clean and user-friendly interface, allowing users to browse articles, explore categories, and stay updated with current events.',
      technologies: ['Flutter','Dart','Rest API','Hive'],
      githubUrl: 'https://github.com/syedfaysal/islamic-app',
      //iveUrl: 'https://example.com/islamic-app',
    ),

    ProjectModel(
      title: 'Weather App',
      category: 'Mobile',
      image: 'assets/images/project_8.png',
      description:
      'Clean Islamic utility app with prayer resources, saved preferences, offline content, and accessible mobile-first design.',
      technologies: ['Flutter','Dart','Rest API','Shared Preferences'],
      githubUrl: 'https://github.com/syedfaysal/islamic-app',
      //iveUrl: 'https://example.com/islamic-app',
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
