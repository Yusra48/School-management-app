import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/LoginView.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  void gotoNextScreen() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9CCBF1),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(
                'images/school.json',
                fit: BoxFit.cover,
                onLoaded: (composition) {
                  Future.delayed(const Duration(seconds: 2), gotoNextScreen);
                },
              ),
              const SizedBox(height: 10),
              const Text(
                'The Learning Academy',
                style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFF9C4),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 27),
                child: Text(
                  'Where the Learning Begins.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFFFF9C4),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
      ),
    );
  }
}
