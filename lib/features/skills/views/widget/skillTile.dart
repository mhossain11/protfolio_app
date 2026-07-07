import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkillTile extends StatelessWidget {
  final String skillName;
  final String? skillIcon;

  SkillTile({
    super.key,
    required this.skillName,
    this.skillIcon ="",
  });

  final RxBool isHover = false.obs;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => isHover.value = true,
      onExit: (_) => isHover.value = false,
      child: Obx(
            () => AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          transform: Matrix4.identity()
            ..scale(isHover.value ? 1.03 : 1.0),
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 14,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: isHover.value
                ? Colors.blueAccent.withOpacity(.08)
                : Colors.white.withOpacity(.04),
            border: Border.all(
              color: isHover.value
                  ? Colors.blueAccent.withOpacity(.4)
                  : Colors.white.withOpacity(.05),
            ),
            boxShadow: isHover.value
                ? [
              BoxShadow(
                color: Colors.amber.withOpacity(.15),
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ]
                : [],
          ),
          child: Row(
            children: [
              Text(
                skillIcon!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: isHover.value
                      ? Colors.amber
                      : Colors.white,
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  skillName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: isHover.value
                        ? Colors.amber
                        : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}