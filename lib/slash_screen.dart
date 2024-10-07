import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:protfolio/profilescreen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget { // Changed to SplashScreen
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  changeScreen(){
    Future.delayed(const Duration(seconds: 4),(){
      Get.to(()=>const ProfileScreen());
    });
  }

  @override
  void initState(){
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.center,
              child: Lottie.asset('assets/icon/infinity-loop.json',), // Ensure the path is correct
            ),
            const SizedBox(height: 100,),
            const SizedBox(
              height: 5,
              width: 10,
            ),
            const SizedBox(height: 5,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Portfolio',
                    style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 225, 28, 10)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
