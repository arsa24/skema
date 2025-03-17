import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smk_edu_management_app/providers/user_provider.dart';
import 'package:smk_edu_management_app/views/guru/settings_guru.dart';
import 'package:smk_edu_management_app/views/guru/task_guru.dart';
import 'package:smk_edu_management_app/views/login_view.dart';
import 'package:smk_edu_management_app/views/onboarding.dart';
import 'package:smk_edu_management_app/views/siswa/settings_siswa.dart';
import 'package:smk_edu_management_app/views/siswa/task_siswa.dart';
import 'package:smk_edu_management_app/widgets/custom_navbar_item.dart';
import 'package:smk_edu_management_app/widgets/navbar_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:smk_edu_management_app/views/register_view.dart';
import 'package:smk_edu_management_app/views/welcome.dart';
import 'package:smk_edu_management_app/views/forgot_password_view.dart';
import 'package:smk_edu_management_app/views/guru/home_guru.dart';
import 'package:smk_edu_management_app/views/siswa/home_siswa.dart';

class RouterConfiguration {
  static final router = GoRouter(
    initialLocation: "/onboarding",
    routes: [
      // Halaman Auth
      GoRoute(path: "/onboarding", builder: (context, state) => Onboarding()),
      GoRoute(path: "/welcome", builder: (context, state) => Welcome()),
      GoRoute(path: "/login", builder: (context, state) => LoginView()),
      GoRoute(path: "/register", builder: (context, state) => RegisterView()),
      GoRoute(
        path: "/forgot",
        builder: (context, state) => ForgotPasswordView(),
      ),

      //route guru
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          final userProvider = Provider.of<UserProvider>(context);
          final user = userProvider.user;
          if (user == null) {
            return const Center(child: CircularProgressIndicator());
          }
          final List<BottomNavigationBarItem> navItems =
              <BottomNavigationBarItem>[
                CustomNavbarItem.vectorIcon("Home", "assets/vector/house.vec"),
                CustomNavbarItem.vectorIcon("Task", "assets/vector/check.vec"),
                CustomNavbarItem.vectorIcon(
                  "Settings",
                  "assets/vector/user.vec",
                ),
              ];
          return NavbarWidget(items: navItems, shell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/guru/home",
                builder: (context, state) => const HomeGuru(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/guru/task",
                builder: (context, state) => const TaskGuru(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/guru/settings",
                builder: (context, state) => const SettingsGuru(),
              ),
            ],
          ),
        ],
      ),

      // route siswa
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          final userProvider = Provider.of<UserProvider>(context);
          final user = userProvider.user;
          if (user == null) {
            return const Center(child: CircularProgressIndicator());
          }
          final List<BottomNavigationBarItem> navItems =
              <BottomNavigationBarItem>[
                CustomNavbarItem.vectorIcon("Home", "assets/vector/house.vec"),
                CustomNavbarItem.vectorIcon("Task", "assets/vector/check.vec"),
                CustomNavbarItem.vectorIcon(
                  "Settings",
                  "assets/vector/user.vec",
                ),
              ];
          return NavbarWidget(items: navItems, shell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/siswa/home",
                builder: (context, state) => const HomeSiswa(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/siswa/task",
                builder: (context, state) => const TaskSiswa(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/siswa/settings",
                builder: (context, state) => const SettingsSiswa(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
