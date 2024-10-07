import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/firebase_options.dart';
import 'package:protfolio/profilescreen.dart';
import 'package:protfolio/slash_screen.dart';


void main()  async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      theme: ThemeData(
        primaryColorDark: Colors.black12,
      ),
      home: const ProfileScreen(),
    );
  }
}

