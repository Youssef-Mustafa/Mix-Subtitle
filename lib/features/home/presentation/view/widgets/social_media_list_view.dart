import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mix_subtitle/features/home/data/models/social_media_model.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/social_media_item.dart';

class SocialMediaSetion extends StatelessWidget {
  const SocialMediaSetion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SocialMedialListView extends StatelessWidget {
  const SocialMedialListView({super.key});

  static const List<SocialMediaModel> items = [
    SocialMediaModel(
      name: 'Discord',
      icon: Icons.discord,
    ),
    SocialMediaModel(
      name: 'Youtube',
      icon: FontAwesomeIcons.youtube,
    ),
    SocialMediaModel(
      name: 'Instagram',
      icon: FontAwesomeIcons.squareInstagram,
    ),
    SocialMediaModel(
      name: 'Twitter',
      icon: FontAwesomeIcons.twitter,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items.map((item) {
        return SocialMediaItem(socialMediaModel: item);
      }).toList(),
    );
  }
}
