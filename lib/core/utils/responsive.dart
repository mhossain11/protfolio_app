import 'package:flutter/material.dart';

extension ResponsiveContext on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;
  bool get isMobileLayout => width < 700;
  bool get isTabletLayout => width >= 700 && width < 1100;
  bool get isDesktopLayout => width >= 1100;
  double get pagePadding => isMobileLayout
      ? 20
      : isTabletLayout
      ? 40
      : 72;
  int get projectColumns => isMobileLayout
      ? 1
      : isTabletLayout
      ? 2
      : 3;
}

class ResponsiveConstrainedBox extends StatelessWidget {
  const ResponsiveConstrainedBox({
    super.key,
    required this.child,
    this.maxWidth = 1180,
  });
  final Widget child;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.pagePadding),
          child: child,
        ),
      ),
    );
  }
}
