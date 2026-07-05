import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/utils/responsive.dart';
import '../../../core/widgets/footer_widget.dart';
import '../../about/views/about_section.dart';
import '../../contact/views/contact_section.dart';
import '../../experience/views/experience_section.dart';
import '../../projects/views/projects_section.dart';
import '../../services/views/services_section.dart';
import '../../skills/views/skills_section.dart';
import '../controllers/home_controller.dart';
import '../controllers/theme_controller.dart';
import 'hero_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final keys = List.generate(7, (_) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      drawer: !context.isDesktopLayout ? _PortfolioDrawer(keys: keys) : null,
      floatingActionButton: Obx(
        () => controller.showTopButton.value
            ? FloatingActionButton(
                onPressed: controller.scrollToTop,
                child: const Icon(Icons.keyboard_arrow_up),
              )
            : const SizedBox.shrink(),
      ),
      body: Stack(
        children: [
          const _GradientBackdrop(),
          CustomScrollView(
            controller: controller.scrollController,
            slivers: [
              SliverAppBar(
                pinned: true,
                floating: true,
                toolbarHeight: 74,
                backgroundColor: Theme.of(
                  context,
                ).scaffoldBackgroundColor.withValues(alpha: .82),
                title: const Text(
                  AppConstants.name,
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                actions: context.isDesktopLayout
                    ? _navActions(keys, context)
                    : null,
                leading: !context.isDesktopLayout
                    ? Builder(
                        builder: (context) => IconButton(
                          onPressed: () => Scaffold.of(context).openDrawer(),
                          icon: const Icon(Icons.menu),
                        ),
                      )
                    : null,
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    _Section(
                      key: keys[0],
                      child: HeroSection(
                        onContact: () => controller.scrollTo(keys[6]),
                      ),
                    ),
                    _Section(key: keys[1], child: const AboutSection()),
                    _Section(key: keys[2], child: const SkillsSection()),
                    _Section(key: keys[3], child: const ExperienceSection()),
                    _Section(key: keys[4], child: const ProjectsSection()),
                    _Section(key: keys[5], child: const ServicesSection()),
                    _Section(key: keys[6], child: const ContactSection()),
                    FooterWidget(
                      onQuickLink: (index) => controller.scrollTo(keys[index]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _navActions(List<GlobalKey> keys, BuildContext context) {
    final labels = [
      'Home',
      'About',
      'Skills',
      'Experience',
      'Projects',
      'Services',
      'Contact',
    ];
    final home = Get.find<HomeController>();
    return [
      for (var i = 0; i < labels.length; i++)
        TextButton(
          onPressed: () => home.scrollTo(keys[i]),
          child: Text(labels[i]),
        ),
      GetBuilder<ThemeController>(
        builder: (theme) => IconButton(
          onPressed: theme.toggleTheme,
          icon: Icon(theme.isDark ? Icons.light_mode : Icons.dark_mode),
        ),
      ),
      const SizedBox(width: 18),
    ];
  }
}

class _PortfolioDrawer extends StatelessWidget {
  const _PortfolioDrawer({required this.keys});
  final List<GlobalKey> keys;

  @override
  Widget build(BuildContext context) {
    final labels = [
      'Home',
      'About',
      'Skills',
      'Experience',
      'Projects',
      'Services',
      'Contact',
    ];
    final home = Get.find<HomeController>();
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            const ListTile(
              title: Text(
                AppConstants.name,
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            for (var i = 0; i < labels.length; i++)
              ListTile(
                title: Text(labels[i]),
                onTap: () {
                  Navigator.pop(context);
                  home.scrollTo(keys[i]);
                },
              ),
            GetBuilder<ThemeController>(
              builder: (theme) => SwitchListTile(
                value: theme.isDark,
                onChanged: (_) => theme.toggleTheme(),
                title: const Text('Dark Mode'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 58), child: child);
}

class _GradientBackdrop extends StatelessWidget {
  const _GradientBackdrop();
  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: dark
              ? [
                  const Color(0xFF0F172A),
                  const Color(0xFF111827),
                  const Color(0xFF172554),
                ]
              : [
                  const Color(0xFFF8FAFC),
                  const Color(0xFFE0F2FE),
                  const Color(0xFFF1F5F9),
                ],
        ),
      ),
      child: const SizedBox.expand(),
    );
  }
}
