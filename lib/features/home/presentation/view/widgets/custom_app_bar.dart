import 'package:flutter/material.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/pro_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Subtitle',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        ProButton(),
      ],
    );
  }
}
