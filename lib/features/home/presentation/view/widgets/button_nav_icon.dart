import 'package:flutter/material.dart';

class ButtonNavIcon extends StatelessWidget {
  const ButtonNavIcon({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
      splashColor: Colors.transparent, // Remove splash color
      highlightColor: Colors.transparent, // Remove highlight color when pressed
    );
  }
}
