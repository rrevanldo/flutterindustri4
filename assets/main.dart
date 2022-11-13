import 'package:episode_3/home/home_screen.dart';
import 'package:episode_3/login/login_screen.dart';
import 'package:episode_3/splash/splash_screen.dart';
import 'package:episode_3/profile/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            color: Colors.blue,
            elevation: 3, // bayangan / shadow
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.grey[50],
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey[300]!)),
          ),
          textTheme: const TextTheme(
              caption:
                  TextStyle(fontSize: 14, color: Colors.black87, height: 2)
          ),
      ),
      initialRoute: 'splashScreen',
      routes: {
        'splashScreen': (context) => const SplashScreen(),
        'login': (context) => const LoginScreen(),
        'home': (context) => const HomeScreen(),
        'profile': (context) => const ProfileScreen(),
      },
    );
  }
}
