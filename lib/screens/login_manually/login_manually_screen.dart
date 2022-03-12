import 'package:bank_of_america/screens/login_manually/login_manually_bloc.dart';
import 'package:bank_of_america/screens/main/main_screen.dart';
import 'package:bank_of_america/shared_widgets/background.dart';
import 'package:bank_of_america/shared_widgets/button.dart';
import 'package:flutter/material.dart';

class LoginManually extends StatefulWidget {
  @override
  State<LoginManually> createState() => _LoginManuallyState();
}

class _LoginManuallyState extends State<LoginManually> {
  var bloc = LoginManuallyBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            BackgroundImage(),
            SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    child: Image.asset("assests/logo_title.png"),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: myCard(
                      context,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myCard(BuildContext context) {
    return Container(
      height: 375,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
              ),
              const Text(
                "Sign in",
                style: TextStyle(fontSize: 30),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Image.asset(
                    "assests/close-Icon.png",
                    width: 50,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: TextField(
              decoration: const InputDecoration(
                label: Text("PRO ID"),
                hintText: "Enter your bank ID",
              ),
              keyboardType: TextInputType.number,
              controller: bloc.usernameField,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                label: Text("PASSWORD"),
                hintText: "......",
              ),
              keyboardType: TextInputType.number,
              controller: bloc.passwordField,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Row(
              children: [
                Checkbox(
                  value: bloc.rememberMyIdChecked,
                  onChanged: (value) {
                    bloc.rememberMyIdChecked = value ?? false;
                    setState(() {});
                  },
                ),
                Text("Remember my ID for future logins.")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Row(
              children: [
                Checkbox(
                  value: bloc.useFingerPrintChecked,
                  onChanged: (value) {
                    bloc.useFingerPrintChecked = value!;
                    setState(() {});
                  },
                ),
                const Text("Use fingerprint recognition next time")
              ],
            ),
          ),
          CustomButton(
            buttonBackgroundColor: Color(0xff027FAC),
            title: "Sign in",
            titleColor: Colors.white,
            onTap: () {
              if (bloc.validateFields()) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MainScreen(),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
