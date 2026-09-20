import 'package:flutter/material.dart';
import 'package:portfolio/screens/splash_screen/googlemap.dart';
import 'package:portfolio/screens/splash_screen/splashscreen.dart';

// import 'package:portfolio/screens/splash_screen/homescreen.dart';
// import 'package:portfolio/screens/splash_screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      
      ),
  home:SplashScreen()
    );
  }
}

class Myportfolio extends StatelessWidget {
  const Myportfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
  appBar: AppBar(
    title: const Text('My Portfolio'),
  ),
  body: Padding(
    padding: const EdgeInsets.all(24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hi, I am Sue 👋',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 12),

        const Text(
          'Flutter Developer',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          'Cybersecurity Learner',
          style: TextStyle(
            fontSize: 18,
          ),
        ),

        const SizedBox(height: 24),

        const Text(
          'I build mobile applications with Flutter and Dart.',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ),
  ),
);
  }
}

