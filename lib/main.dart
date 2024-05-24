import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/Categories/StudentView.dart';
import 'package:flutter_application_1/Categories/TeacherView.dart';
import 'package:flutter_application_1/Screens/Homepage.dart';
import 'package:flutter_application_1/Screens/SplashScreen.dart';
import 'package:flutter_application_1/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentView(),
    );
  }
}
