import 'package:flutter/material.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        children: [
          CustomAppBar(),
          Spacer(),
          Center(
            child: Text(
              'No projects Yet',
              style: TextStyle(color: Color(0xff7c7e84), fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Hit the button below to add your first project and see some magic',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff6f7279)),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
