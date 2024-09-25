import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/custom_profile_button.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/legal_section.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/social_media_list_view.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          'User Name',
          style: TextStyle(fontSize: 22),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Google: Username@gmail.com',
          style: TextStyle(fontSize: 12),
        ),
        const SizedBox(height: 15),
        const Text(
          '120 Credits Reamaining',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomProfileButton(
              firstWord: 'Support',
              secondWord: 'Chat',
              icon: FontAwesomeIcons.comments,
              backgroundColor: const Color(0xff292a2f),
              textBackgroundColor: const Color(0xffaafe4e),
              iconColor: const Color(0xffaef95a),
              onPressed: () {},
            ),
            CustomProfileButton(
              firstWord: 'Subtitle',
              secondWord: 'Pro',
              icon: FontAwesomeIcons.star,
              backgroundColor: const Color(0xff7e4dfe),
              textBackgroundColor: const Color(0xff7e12fe),
              iconColor: Colors.white,
              secondTextColor: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        const Divider(
          height: 30,
          thickness: 2,
          color: Color(0xff292a2f),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Connect'.toUpperCase(),
            style: const TextStyle(
              color: Color(0xff787b82),
            ),
          ),
        ),
        const SizedBox(height: 15),
        const SocialMedialListView(),
        const Divider(
          height: 30,
          thickness: 2,
          color: Color(0xff292a2f),
        ),
        const LegalSection(),
        const Divider(
          height: 30,
          thickness: 2,
          color: Color(0xff292a2f),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.transparent,
              overlayColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              side: const BorderSide(
                color: Color(0xff292a2f),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Log Out',
              style: TextStyle(color: Color(0xff721ed8), fontSize: 14),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        const Text(
          'App Version: 1.0',
          style: TextStyle(color: Color(0xff3b3c41)),
        ),
      ],
    );
  }
}
