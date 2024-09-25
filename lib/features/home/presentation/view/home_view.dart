import 'package:flutter/material.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/custom_button_navigation.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/profile_body.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/project_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  // List of widgets to switch between
  final List<Widget> _pages = [
    const ProjectBody(),
    const ProfileBody(),
  ];

  // Method to handle tab switching
  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigation(
            onTabSelected: _onTabSelected,
            currentIndex: _currentIndex), // Pass current index
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: _pages[_currentIndex],
        ),
      ),
    );
  }
}
