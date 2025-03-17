import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smk_edu_management_app/core/theme.dart';
import 'package:smk_edu_management_app/providers/user_provider.dart';
import 'package:smk_edu_management_app/router/router_configuration.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: RouterConfiguration.router,
    );
  }
}
