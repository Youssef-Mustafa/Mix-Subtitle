import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/unicorn_outline_button.dart';

class ProButton extends StatelessWidget {
  const ProButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UnicornOutlineButton(
      strokeWidth: 2,
      radius: 8,
      gradient: const LinearGradient(
        colors: [Color(0xff6c3af1), Color(0xff412886)],
      ),
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) => const RadialGradient(
                colors: [Color(0xff6c3af1), Color(0xff412886)],
              ).createShader(bounds),
              child: const Icon(
                Icons.star_border,
                size: 26,
              ),
            ),
            const SizedBox(width: 2),
            const Text('Get PRO'),
          ],
        ),
      ),
    );
  }
}
