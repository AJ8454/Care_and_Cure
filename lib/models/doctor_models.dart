import 'package:flutter/material.dart';

class Doctor {
  final String? image, name, subject, body, time, description, qualification;
  final bool? isAttachmentAvailable, isChecked;
  final Color? tagColor;

  Doctor({
    this.time,
    this.isChecked,
    this.description,
    this.qualification,
    this.image,
    this.name,
    this.subject,
    this.body,
    this.isAttachmentAvailable,
    this.tagColor,
  });
}

String emailDemoText =
    "Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed";
