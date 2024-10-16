import 'package:go_router/go_router.dart';
import 'package:mix_subtitle/features/home/presentation/view/home_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}
