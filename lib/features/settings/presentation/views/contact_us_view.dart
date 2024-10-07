import 'package:flutter/material.dart';
import 'package:shagaf/features/settings/presentation/views/widgets/contact_us_widgets/contact_us_body.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ContactUsBody()),
    );
  }
}
