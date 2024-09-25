import 'package:flutter/material.dart';
import 'package:mix_subtitle/constants.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/button_nav_icon.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/create_button.dart';

class CustomBottomNavigation extends StatelessWidget {
  final Function(int) onTabSelected; // Callback to pass the selected index
  final int currentIndex; // Track the current index

  const CustomBottomNavigation({
    super.key,
    required this.onTabSelected,
    required this.currentIndex, // Receive the current index
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff292a2e), width: 2),
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        color: kPrimaryColor,
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonNavIcon(
              title: 'Projects',
              icon: Icons.video_collection_outlined,
              onPressed: () {
                onTabSelected(0); // Projects tab selected
              },
              isSelected: currentIndex == 0, // Check if selected
            ),
            const CreateButton(),
            ButtonNavIcon(
              icon: Icons.person_outline,
              title: 'Profile',
              onPressed: () {
                onTabSelected(1); // Profile tab selected
              },
              isSelected: currentIndex == 1, // Check if selected
            ),
          ],
        ),
      ),
    );
  }
}
