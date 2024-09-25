import 'package:flutter/material.dart';
import 'package:mix_subtitle/features/home/data/models/social_media_model.dart';

class SocialMediaItem extends StatelessWidget {
  const SocialMediaItem({super.key, required this.socialMediaModel});
  final SocialMediaModel socialMediaModel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0, // No elevation
        shadowColor: Colors.transparent, // No shadow
        surfaceTintColor: Colors.transparent, // Remove pressed tint
        padding: EdgeInsets.zero, // Remove default padding
        splashFactory: NoSplash.splashFactory, // Disable splash effect
        overlayColor: Colors.transparent, // Remove overlay color
      ),
      child: Column(
        children: [
          Icon(
            socialMediaModel.icon,
            color: const Color(0xff7c7f88),
            size: 28,
          ),
          const SizedBox(height: 10),
          Text(
            socialMediaModel.name,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
