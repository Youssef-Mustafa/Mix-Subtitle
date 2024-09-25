import 'package:flutter/material.dart';

class LegalSection extends StatelessWidget {
  const LegalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'legal'.toUpperCase(),
            style: const TextStyle(
              color: Color(0xff787b82),
            ),
          ),
        ),
        const SizedBox(height: 15),
        const ListTile(
          leading: Icon(
            Icons.shopping_bag_outlined,
            color: Color(0xff7c7f88),
            size: 28,
          ),
          title: Text(
            'Privacy Policy',
            style: TextStyle(fontSize: 14),
          ),
          trailing: Icon(
            Icons.navigate_next,
            color: Color(0xff7c7f88),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.shopping_bag_outlined,
            color: Color(0xff7c7f88),
            size: 28,
          ),
          title: Text(
            'Terms Of Use',
            style: TextStyle(fontSize: 14),
          ),
          trailing: Icon(
            Icons.navigate_next,
            color: Color(0xff7c7f88),
          ),
        ),
      ],
    );
  }
}
