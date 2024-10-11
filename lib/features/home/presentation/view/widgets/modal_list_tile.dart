import 'package:flutter/material.dart';

class ModalListTile extends StatelessWidget {
  const ModalListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconData,
  });
  final String title;
  final String subtitle;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xff7e12fe),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Icon(iconData),
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Color(0xff64676e), fontSize: 12),
      ),
      onTap: () {
        // Handle import footage
        Navigator.pop(context);
      },
    );
  }
}
