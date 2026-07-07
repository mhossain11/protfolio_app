import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'skillTile.dart';

class SkillCategoryCard extends StatelessWidget {
  SkillCategoryCard({
    super.key,
    required this.title,
    required this.skills,
  });

  final String title;
  final List<dynamic> skills;

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
            ..scale(isHover.value ? 1.02 : 1.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: isHover.value
                ? [
              BoxShadow(
                color: Colors.amber.withOpacity(.20),
                blurRadius: 40,
                spreadRadius: 4,
              ),
            ]
                : [],
          ),
          child: Card(
            elevation: 0,
            color: const Color(0xff16181d),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                color: isHover.value
                    ? Colors.amber.withOpacity(.4)
                    : Colors.white.withOpacity(.08),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: isHover.value
                          ? Colors.amber
                          : Colors.white,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Divider(
                    color: Colors.white.withOpacity(.1),
                  ),

                  const SizedBox(height: 20),

                  ...skills.map(
                        (skill) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: SkillTile(
                        skillName: skill.name,
                        skillIcon: skill.emoji,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}