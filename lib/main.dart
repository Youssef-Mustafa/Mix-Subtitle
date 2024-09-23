import 'package:flutter/material.dart';
import 'package:mix_subtitle/constants.dart';
import 'package:mix_subtitle/core/utlis/app_router.dart';

void main() {
  runApp(const MixSubtitle());
}

class MixSubtitle extends StatelessWidget {
  const MixSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
    );
  }
}
