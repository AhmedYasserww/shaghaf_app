import 'package:flutter/material.dart';
import 'package:shagaf/features/home/presentation/views/widgets/profile_widgets/profile_body.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: ProfileBody()),
    );
  }
}
