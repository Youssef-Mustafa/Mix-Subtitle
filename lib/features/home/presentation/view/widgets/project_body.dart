import 'package:flutter/material.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/no_projects_body.dart';

class ProjectBody extends StatelessWidget {
  const ProjectBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        Spacer(),
        NoProjectsBody(),
        Spacer(),
      ],
    );
  }
}
