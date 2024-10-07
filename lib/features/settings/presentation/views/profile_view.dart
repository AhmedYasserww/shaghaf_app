import 'package:flutter/material.dart';
import 'package:shagaf/features/settings/presentation/views/widgets/profile_widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: ProfileViewBody()),
    );
  }
}
