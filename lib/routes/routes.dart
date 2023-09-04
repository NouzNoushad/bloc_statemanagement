import 'package:bloc_state_management/presentation/checkbox_screen.dart';
import 'package:bloc_state_management/presentation/radio_screen.dart';
import 'package:bloc_state_management/presentation/switch_screen.dart';
import 'package:bloc_state_management/routes/route_constant.dart';
import 'package:go_router/go_router.dart';

import '../presentation/dropdown_screen.dart';

class Routes {
  static final GoRouter router =
      GoRouter(initialLocation: RouteConstant.radio, routes: [
    GoRoute(
        path: RouteConstant.dropdown,
        builder: (context, state) => const DropdownScreen()),
    GoRoute(
        path: RouteConstant.switchRoute,
        builder: (context, state) => const SwitchScreen()),
    GoRoute(
        path: RouteConstant.checkbox,
        builder: (context, state) => const CheckboxScreen()),
    GoRoute(
        path: RouteConstant.radio,
        builder: (context, state) => const RadioScreen()),
  ]);
}
