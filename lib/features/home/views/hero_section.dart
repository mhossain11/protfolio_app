import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/utils/responsive.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/glass_card.dart';
import '../../../core/widgets/social_button.dart';
import '../controllers/home_controller.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key, required this.onContact});
  final VoidCallback onContact;

  @override
  Widget build(BuildContext context) {
    final home = Get.find<HomeController>();
    final intro = _IntroContent(home: home, onContact: onContact);
    final profile = _ProfileCard(home: home);
    return ResponsiveConstrainedBox(
      child: context.isDesktopLayout
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 6, child: intro),
                const SizedBox(width: 48),
                Expanded(flex: 4, child: profile),
              ],
            )
          : Column(children: [intro, const SizedBox(height: 36), profile]),
    );
  }
}

class _IntroContent extends StatelessWidget {
  const _IntroContent({required this.home, required this.onContact});
  final HomeController home;
  final VoidCallback onContact;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.isDesktopLayout
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Text(
          'Hello, I am',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          AppConstants.name,
          textAlign: context.isDesktopLayout
              ? TextAlign.start
              : TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 16),
        Obx(
          () => Text(
            '${home.typedTitle.value}|',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(height: 18),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 680),
          child: Text(
            AppConstants.tagline,
            textAlign: context.isDesktopLayout
                ? TextAlign.start
                : TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(height: 1.5),
          ),
        ),
        const SizedBox(height: 28),
        Wrap(
          spacing: 14,
          runSpacing: 14,
          alignment: context.isDesktopLayout
              ? WrapAlignment.start
              : WrapAlignment.center,
          children: [
            CustomButton(
              label: 'Download CV',
              icon: Icons.download,
              onPressed: () => home.openUrl(AppConstants.resumeUrl),
            ),
            CustomButton(
              label: 'Contact Me',
              icon: Icons.mail,
              onPressed: onContact,
              filled: false,
            ),
          ],
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 12,
          alignment: WrapAlignment.center,
          children: [
            SocialButton(
              label: 'GitHub',
              icon: Icons.code,
              onTap: () => home.openUrl(AppConstants.githubUrl),
            ),
            SocialButton(
              label: 'LinkedIn',
              icon: Icons.work,
              onTap: () => home.openUrl(AppConstants.linkedInUrl),
            ),
            SocialButton(
              label: 'Facebook',
              icon: Icons.facebook,
              onTap: () => home.openUrl(AppConstants.facebookUrl),
            ),
          ],
        ),
      ],
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard({required this.home});
  final HomeController home;
  @override
  Widget build(BuildContext context) {
    return GlassCard(
      child: Column(
        children: [
          Container(
            width: 220,
            height: 220,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ],
              ),
            ),
            child: const Icon(Icons.person, size: 112, color: Colors.white),
          ),
          const SizedBox(height: 24),
          Obx(
            () => Wrap(
              spacing: 14,
              runSpacing: 14,
              alignment: WrapAlignment.center,
              children: [
                _Metric(
                  label: 'Visitors',
                  value: home.visitors.value.toString(),
                ),
                _Metric(
                  label: 'GitHub Repos',
                  value: home.githubRepos.value?.toString() ?? '--',
                ),
                const _Metric(label: 'Experience', value: '3+ yrs'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Metric extends StatelessWidget {
  const _Metric({required this.label, required this.value});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) => SizedBox(
    width: 110,
    child: Column(
      children: [
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900),
        ),
        Text(label, textAlign: TextAlign.center),
      ],
    ),
  );
}
