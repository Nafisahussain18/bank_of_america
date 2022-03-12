import 'package:bank_of_america/screens/login_finger/login_finger_screen.dart';
import 'package:bank_of_america/screens/login_manually/login_manually_screen.dart';
import 'package:bank_of_america/shared_widgets/background.dart';
import 'package:bank_of_america/shared_widgets/button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 100),
                Center(
                  child: Image.asset(
                    "assests/logo.png",
                  ),
                ),
                const SizedBox(height: 100),
                CustomButton(
                    buttonBackgroundColor: Colors.white,
                    title: "Sign in with Finger Print",
                    titleColor: Color(0xff0B4C6E),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginFinger(),
                        ),
                      );
                    }),
                CustomButton(
                    buttonBackgroundColor: Color(0xff0B4C6E),
                    title: "Sign in Manually",
                    titleColor: Colors.white,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginManually(),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
