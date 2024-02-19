import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text("d"),
        ),
      ),
    );
  }
}

class LoadingLetter extends StatefulWidget {
  const LoadingLetter({super.key});

  @override
  _LoadingLetterState createState() => _LoadingLetterState();
}

class _LoadingLetterState extends State<LoadingLetter> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
      animationBehavior:AnimationBehavior.preserve,
    )
    ..reverse()
    ..repeat(reverse: true)
    // ..repeat(reverse: true)
    ;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Letter Animation'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (BuildContext context, child) {
            return Text(
              'QuizCraft', // Replace 'L' with your desired letter
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: _animationController.value * 10, // Adjust the value as needed
              ),
            );
          },
        ),
      ),
    );
  }
}