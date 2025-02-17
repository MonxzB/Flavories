import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/Screens/DietSelection/diet_selection_screen.dart';
import 'package:fluttertest/Screens/DietSelection/diet_selection_screen2.dart';
import 'package:fluttertest/Screens/DietSelection/diet_selection_screen3.dart';
import 'package:fluttertest/Screens/Login/login_screen.dart';
import 'package:fluttertest/Screens/Signup/signup_screen.dart';
import 'package:fluttertest/Screens/home_screen.dart';
import 'package:fluttertest/components/header.dart';
import 'package:fluttertest/ui/splash/splash.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:
        DefaultFirebaseOptions.currentPlatform, // ✅ Thêm options cho Firebase
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
