import 'package:flutter/material.dart';

class AnimatedContainerCard extends StatefulWidget {
  const AnimatedContainerCard({super.key, required this.child});
  final Widget child;

  @override
  State<AnimatedContainerCard> createState() => _AnimatedContainerCardState();
}

class _AnimatedContainerCardState extends State<AnimatedContainerCard> {
  bool _hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOut,
        transform: Matrix4.identity()..translate(0.0, _hovered ? -6.0 : 0.0),
        child: widget.child,
      ),
    );
  }
}
