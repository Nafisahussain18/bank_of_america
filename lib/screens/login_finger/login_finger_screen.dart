import 'package:bank_of_america/main.dart';
import 'package:bank_of_america/screens/dashboard_screen/dashboard_screen.dart';
import 'package:bank_of_america/shared_widgets/background.dart';
import 'package:flutter/material.dart';

import '../main/main_screen.dart';

class LoginFinger extends StatelessWidget {
  const LoginFinger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: BackgroundImage,
      body: Stack(
        children: [
          BackgroundImage(),
          SafeArea(
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(flex: 2, child: SizedBox()),
                    const Text('Start Using Your',
                        softWrap: true,
                        style:
                            TextStyle(fontSize: 24, color: Color(0xff2189BC))),
                    const Text('Fingerprint',
                        softWrap: true,
                        style:
                            TextStyle(fontSize: 24, color: Color(0xff2189BC))),
                    const SizedBox(height: 16),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const dashboard_screen()));
                        },
                        child: Image.asset('assests/fingerprint.png')),
                    const Expanded(flex: 3, child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 38,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Color(0xff0078A6), Color(0xff16CFF3)]),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: ElevatedButton(
                            onPressed: (() {
                              Navigator.of(context).pop();
                            }),
                            child: const Text('Not Now'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                            ),
                          )),
                    ),
                    const SizedBox(height: 16),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
