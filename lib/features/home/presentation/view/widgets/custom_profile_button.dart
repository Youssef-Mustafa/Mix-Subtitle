import 'package:flutter/material.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton({
    super.key,
    required this.firstWord,
    required this.secondWord,
    required this.icon,
    required this.backgroundColor,
    required this.textBackgroundColor,
    required this.iconColor,
    this.secondTextColor,
    this.onPressed, // Add an optional onPressed callback
  });

  final String firstWord;
  final String secondWord;
  final IconData icon;
  final Color backgroundColor;
  final Color textBackgroundColor;
  final Color iconColor;
  final Color? secondTextColor;
  final VoidCallback? onPressed; // Callback for button press events

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return ElevatedButton(
      onPressed: onPressed, // Handle button press
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(8),
      ),
      child: SizedBox(
        width: width * 0.40,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$firstWord ',
                  style: const TextStyle(color: Colors.white),
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: textBackgroundColor,
                  ),
                  child: Text(
                    style: TextStyle(color: secondTextColor ?? Colors.black),
                    secondWord.toUpperCase(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
