import 'package:flutter/material.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_widgets/custom_bottom_navigation_bar.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_widgets/custom_drawer.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_widgets/custom_floating_action_button.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer:CustomDrawerItem(),
        bottomNavigationBar: CustomBottomNavigationBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CustomFloatingActionButton(),
        body:HomeViewBody()
    );
  }
}
