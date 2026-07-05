import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/utils/responsive.dart';
import '../../../core/widgets/contact_card.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/glass_card.dart';
import '../../../core/widgets/section_title.dart';
import 'contact_controller.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ContactController>();

    //info column
    const infoColumn = Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 14),
          child: ContactCard(
            icon: Icons.email,
            title: 'Email',
            value: AppConstants.email,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 14),
          child: ContactCard(
            icon: Icons.phone,
            title: 'Phone',
            value: AppConstants.phone,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 14),
          child: ContactCard(
            icon: Icons.location_on,
            title: 'Location',
            value: AppConstants.location,
          ),
        ),
      ],
    );

    //contact box
    final form = GlassCard(
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            CustomTextField(controller: controller.name, label: 'Name'),
            const SizedBox(height: 14),
            //Email
            CustomTextField(
              controller: controller.email,
              label: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 14),
            CustomTextField(controller: controller.subject, label: 'Subject'),
            const SizedBox(height: 14),
            //Message
            CustomTextField(
              controller: controller.message,
              label: 'Message',
              maxLines: 5,
            ),
            const SizedBox(height: 18),
            //Send Message button
            Align(
              alignment: Alignment.centerRight,
              child: Obx(
                () => controller.sending.value
                    ? const CircularProgressIndicator()
                    : CustomButton(
                        label: 'Send Message',
                        icon: Icons.send,
                        onPressed: controller.submit,
                      ),
              ),
            ),
          ],
        ),
      ),
    );

    //Contact
    return ResponsiveConstrainedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            eyebrow: 'Contact',
            title: 'Let us build something useful.',
            subtitle:
                'Send a message for Flutter apps, backend APIs, Firebase integrations, or dashboard work.',
          ),
          const SizedBox(height: 28),
          context.isDesktopLayout
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(flex: 4, child: infoColumn),
                    const SizedBox(width: 24),
                    Expanded(flex: 6, child: form),
                  ],
                )
              : Column(
                  children: [infoColumn, const SizedBox(height: 10),
                    form],
                ),
        ],
      ),
    );
  }
}
