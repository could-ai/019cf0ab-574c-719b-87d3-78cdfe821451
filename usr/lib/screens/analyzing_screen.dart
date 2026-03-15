import 'package:flutter/material.dart';
import 'dart:async';

class AnalyzingScreen extends StatefulWidget {
  const AnalyzingScreen({super.key});

  @override
  State<AnalyzingScreen> createState() => _AnalyzingScreenState();
}

class _AnalyzingScreenState extends State<AnalyzingScreen> with SingleTickerProviderStateMixin {
  String _statusText = 'Scanning image...';
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();

    _runAnalysisMock();
  }

  Future<void> _runAnalysisMock() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) setState(() => _statusText = 'Measuring foot width and length...');
    
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) setState(() => _statusText = 'Analyzing arch type...');
    
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) setState(() => _statusText = 'Matching with boot database...');
    
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      Navigator.pushReplacementNamed(context, '/recommendations');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.primary),
                    strokeWidth: 8,
                  ),
                ),
                Icon(Icons.auto_awesome, size: 60, color: Theme.of(context).colorScheme.primary),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              'AI Analysis in Progress',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                _statusText,
                key: ValueKey<String>(_statusText),
                style: TextStyle(fontSize: 16, color: Colors.grey[400]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
