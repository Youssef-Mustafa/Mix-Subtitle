import 'package:flutter/material.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/profile_body.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: ProfileBody(),
    );
  }
}
