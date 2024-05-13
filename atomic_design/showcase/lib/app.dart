import 'package:flutter/material.dart';

import 'package:app/config/routes/app_routes.dart';
import 'package:app/screens/screens.dart';
import 'package:weinds/foundations/themes/weinds_themes.dart';

class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ligthThemeWeincode,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.home:
            return MaterialPageRoute(builder: (context) => const HomePage());
          //return MaterialPageRoute(builder: (context) => const ButtonsPage());
          case AppRoutes.atoms:
            return MaterialPageRoute(builder: (context) => const AtomsPage());
          case AppRoutes.buttons:
            return MaterialPageRoute(builder: (context) => const ButtonsPage());
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
          //return MaterialPageRoute(builder: (context) => const ButtonsPage());
        }
      },
    );
  }
}
