import 'package:flutter/material.dart';
import 'package:inflab_website/home_page.dart';
import 'package:inflab_website/team_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _m3Theme(),
      darkTheme: _m3Theme(brightness: Brightness.dark),
      routes: {
        '/': (context) => const HomePage(),
        '/team': (context) => const TeamPage(),
      },
    );
  }

  ThemeData _m3Theme({
    Brightness brightness = Brightness.light,
    Color color = Colors.red,
  }) {
    return ThemeData(
      fontFamily: 'HSDSans-Regular',
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: color,
        brightness: brightness,
      ),
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          for (final platform in TargetPlatform.values)
            platform: const NoTransitionsBuilder(),
        },
      ),
    );
  }
}

class NoTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T>? route,
    BuildContext? context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget? child,
  ) {
    return child!;
  }
}
