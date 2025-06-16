import 'package:go_router/go_router.dart';
import 'package:start_app/presentation/pages/counter/counter_page.dart';
import 'root_constants.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.counter,
  routes: <GoRoute>[
    GoRoute(
      path: Routes.counter,
      builder: (context, state) => const CounterPage(),
    ),
  ],
);
