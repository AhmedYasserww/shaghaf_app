import 'package:flutter/material.dart';
class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12.0,
      unselectedFontSize: 10.0,
      items:  const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.edit),
          label: 'Book',
        ),
        BottomNavigationBarItem(
          icon: SizedBox.shrink(),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer),
          label: 'Offers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'More',
        ),
      ],
    );
  }
}
