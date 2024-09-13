import 'package:flutter/material.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_widgets/custom_bottom_navigation_bar.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_widgets/custom_drawer.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_widgets/custom_floating_action_button.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_widgets/home_view_body.dart';
import 'package:shagaf/features/home/presentation/views/widgets/offers_widgets/offers_body.dart';

import '../../../booking/presentation/views/widgets/booking_history_widgets/booking_history_body.dart';
import '../../../settings/presentation/views/widgets/settings_widgets/settings_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  List<Widget> views = [
    const HomeViewBody(),
    const BookingHistoryBody(),
    Container(),
    const OffersBody(),
    const SettingsBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: selectedIndex == 0 ? const CustomDrawerItem() : null,
        endDrawer: (selectedIndex == 1 || selectedIndex == 3)  ? const CustomDrawerItem() : null,
        bottomNavigationBar: CustomBottomNavigationBar(
          onIndexChanged: (int value) {
            setState(() {
              selectedIndex = value;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const CustomFloatingActionButton(),
        body: views.elementAt(selectedIndex));
  }
}