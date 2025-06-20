import 'package:go_router/go_router.dart';
import 'package:start_app/presentation/pages/counter/counter_page.dart';
import 'package:start_app/presentation/pages/app_layout/app_layout.dart';
import 'root_constants.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.counter,
  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) => AppLayout(child: child),
      routes: [
        GoRoute(
          path: Routes.counter,
          builder: (context, state) => const CounterPage(),
        ),
      ],
    ),
  ],
);
