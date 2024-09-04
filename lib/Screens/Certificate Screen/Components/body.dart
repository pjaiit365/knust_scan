import 'package:flutter/material.dart';

import '../../../Components/certificate_document.dart';
import '../../Login Verification/Components/body.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CertificateDocument(
      name: certData.name,
      level: certData.level,
      graduatingClass: certData.graduatingClass,
      course: certData.course,
      refNumber: certData.refNumber,
      graduatingDay: certData.graduationDay,
    );
  }
}
