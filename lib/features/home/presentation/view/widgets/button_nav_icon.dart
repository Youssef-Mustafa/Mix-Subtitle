import 'package:flutter/material.dart';

class ButtonNavIcon extends StatelessWidget {
  const ButtonNavIcon({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
    this.isSelected = false, // New parameter to track selection
  });

  final String title;
  final IconData icon;
  final void Function()? onPressed;
  final bool isSelected; // New parameter for selection state

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
            color: isSelected
                ? const Color(0xff404349)
                : Colors.grey, // Change color based on selection
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: isSelected
                  ? const Color(0xff404349)
                  : Colors.grey, // Change color based on selection
            ),
          ),
        ],
      ),
      splashColor: Colors.transparent, // Remove splash color
      highlightColor: Colors.transparent, // Remove highlight color when pressed
    );
  }
}
