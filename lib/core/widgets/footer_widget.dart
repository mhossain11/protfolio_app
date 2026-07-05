import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key, required this.onQuickLink});
  final ValueChanged<int> onQuickLink;

  @override
  Widget build(BuildContext context) {
    final links = ['Home', 'About', 'Skills', 'Projects', 'Contact'];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 34),
      child: Column(
        children: [
          Text(
            AppConstants.name,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 12),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8,
            children: [
              for (var i = 0; i < links.length; i++)
                TextButton(
                  onPressed: () => onQuickLink(i),
                  child: Text(links[i]),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'Copyright ${DateTime.now().year} Syed Faysal Hossain. All rights reserved.',
          ),
        ],
      ),
    );
  }
}
