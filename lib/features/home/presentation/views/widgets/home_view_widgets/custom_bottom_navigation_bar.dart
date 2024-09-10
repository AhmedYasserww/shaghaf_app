import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.onIndexChanged,
  });

  final ValueChanged<int> onIndexChanged; // Callback function to pass index

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12.0,
      unselectedFontSize: 10.0,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.blue,
      currentIndex: selectedIndex, // Reflect the selected index
      onTap: (index) {
        // Skip index 2, which is the placeholder
        if (index != 2) {
          setState(() {
            selectedIndex = index;
            widget.onIndexChanged(selectedIndex); // Notify parent of the index change
          });
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.edit),
          label: 'Book',
        ),
        BottomNavigationBarItem(
          // Placeholder that should not affect index
          icon: SizedBox.shrink(), // Invisible widget
          label: '', // Empty label or non-interactive
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
