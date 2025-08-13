import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/presentation/screens/characters/characters_screen.dart';
import 'package:hp_explore_mobile/presentation/widgets/primary_button.dart';

import '../bottom_navbar/bottom_navbar.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 23, 47),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wallpaper.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.75),
              PrimaryButton(
                title: "Login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavbar()),
                  );
                },
              ),
              SizedBox(height: 15),
              PrimaryButton(
                title: "Get Started",
                onPressed: () {},
                buttoncolor: const Color.fromARGB(255, 219, 219, 219),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
