import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';

class IslaimApp extends StatelessWidget {
  const IslaimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        HomeScreen.routeName : (_) => HomeScreen()},
        initialRoute: HomeScreen.routeName ,
    );
  }
}
