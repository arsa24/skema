import 'package:go_router/go_router.dart';
import 'package:smk_edu_management_app/components/navbar_component.dart';
import 'package:smk_edu_management_app/screens/onboarding_screen.dart';

bool isAuth = false;

final GoRouter skemaRouter = GoRouter(
  initialLocation: "/onboarding",
  routes: [
    ShellRoute(
      routes: [
        GoRoute(path: "/home", name: "home"),
        GoRoute(path: "/task", name: "task"),
        GoRoute(path: "/learning", name: "learning"),
        GoRoute(path: "/profile", name: "profile"),
      ],
      builder: (context, state, child) => NavbarComponent(),
    ),
    GoRoute(
      path: "/onboarding",
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(path: "/home", builder: (context, state) => NavbarComponent()),
  ],
  redirect: (context, state) {
    if (!isAuth) {
      return "/onboarding";
    } else {
      return "/home";
    }
  },
);
