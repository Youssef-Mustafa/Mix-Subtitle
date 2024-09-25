import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 130,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: const Color(0xff7e12fe),
        ),
        onPressed: () {},
        child: const Text(
          'Create',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
