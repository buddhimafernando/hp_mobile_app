import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/presentation/screens/landing_screen.dart';
import 'package:hp_explore_mobile/utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print("hi hi this works");
    navigateToLogin();
  }

  void navigateToLogin() async {
    Future.delayed(Duration(seconds: 3), () async {
      print("hi hi this works >>>>>>>");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LandingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 23, 47),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
    );
  }
}
