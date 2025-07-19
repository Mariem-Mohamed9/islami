import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/onboarding_screen.dart';
import 'package:islami/tabs/quran/sura_details_screen.dart';

void main() {
  runApp(IslaimApp());
}

class IslaimApp extends StatelessWidget {
  const IslaimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        OnboardingScreen.routeName: (_) => OnboardingScreen(),
        SuraDetailsScreen .routeName: (_) => SuraDetailsScreen (),
        '/home': (context) => HomeScreen(),
      },
      theme:AppTheme.LightTheme ,
      darkTheme:AppTheme.darkTheme ,
      themeMode:ThemeMode.dark ,
      initialRoute: OnboardingScreen.routeName,
    );
  }
}
