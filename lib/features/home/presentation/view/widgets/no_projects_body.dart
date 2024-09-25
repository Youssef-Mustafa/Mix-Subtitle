import 'package:flutter/material.dart';

class NoProjectsBody extends StatelessWidget {
  const NoProjectsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff292a2f),
          ),
          child: const Icon(
            size: 44,
            Icons.video_call_outlined,
            color: Color(0xff56595f),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            'No projects Yet',
            style: TextStyle(color: Color(0xff7c7e84), fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            'Hit the button below to add your first project and see some magic',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xff6f7279)),
          ),
        ),
      ],
    );
  }
}
