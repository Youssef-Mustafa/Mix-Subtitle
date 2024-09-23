import 'package:flutter/material.dart';
import 'package:mix_subtitle/constants.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff292a2e), width: 2),
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: 80,
        color: kPrimaryColor,
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_collection_outlined,
                size: 30,
              ),
            ),
            SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Color(0xff7e12fe),
                ),
                onPressed: () {},
                child: const Text(
                  'Create',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            IconButton(
              //TODO: add text under icon
              onPressed: () {},
              icon: const Icon(
                Icons.person_outlined,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
