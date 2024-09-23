import 'package:flutter/material.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/custom_button_navigation.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigation(),
        body: HomeViewBody(),
      ),
    );
  }
}
