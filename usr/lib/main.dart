import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/scan_foot_screen.dart';
import 'screens/analyzing_screen.dart';
import 'screens/recommendation_screen.dart';

void main() {
  runApp(const BootFitApp());
}

class BootFitApp extends StatelessWidget {
  const BootFitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BootFit AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00FF87), // Neon green accent
          brightness: Brightness.dark, // Premium dark theme for sports app
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/scan': (context) => const ScanFootScreen(),
        '/analyzing': (context) => const AnalyzingScreen(),
        '/recommendations': (context) => const RecommendationScreen(),
      },
    );
  }
}
