import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/services/email_service.dart';

class ContactController extends GetxController {
  ContactController(this.emailService);
  final EmailService emailService;
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final subject = TextEditingController();
  final message = TextEditingController();
  final sending = false.obs;

  Future<void> submit() async {
    if (!formKey.currentState!.validate()) return;
    sending.value = true;
    final ok = await emailService.sendMessage(
      name: name.text,
      email: email.text,
      subject: subject.text,
      message: message.text,
    );
    sending.value = false;
    Get.snackbar(
      ok ? 'Message sent' : 'Demo endpoint',
      ok
          ? 'Thanks for reaching out.'
          : 'Connect EmailJS or your backend endpoint before production.',
    );
  }

  @override
  void onClose() {
    name.dispose();
    email.dispose();
    subject.dispose();
    message.dispose();
    super.onClose();
  }
}
