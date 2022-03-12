import 'dart:ui';

import 'package:bank_of_america/screens/dashboard_screen/usedwidget.dart';
import 'package:bank_of_america/screens/wallet_screen/wallet.dart';
import 'package:bank_of_america/shared_widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../shared_widgets/background.dart';
import '../../shared_widgets/custom_appbar.dart';

class dashboard_screen extends StatefulWidget {
  const dashboard_screen({Key? key}) : super(key: key);

  @override
  _dashboard_screenState createState() => _dashboard_screenState();
}

class _dashboard_screenState extends State<dashboard_screen> {
  final globalKey = GlobalKey<ScaffoldState>();
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: globalKey,
      drawer: custom_drawer(context),
      body: Stack(alignment: AlignmentDirectional.center, children: [
        BackgroundImage(),
        Positioned(
          top: 60,
          right: 35,
          child: Row(
            children: [
              const Text(
                'DASHBOARD',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              const SizedBox(width: 30),
              InkWell(
                  child: Image.asset(
                      '/Users/nafisahussein/Desktop/FlutterApps/bank_of_america/assests/Meun.png'),
                  onTap: () => globalKey.currentState?.openDrawer()),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 120),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              container_1(dateTime),
              const SizedBox(height: 20),
              container_2(),
              const SizedBox(height: 20),
              Container(
                width: 340,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                                clipBehavior: Clip.none,
                                alignment: AlignmentDirectional.topEnd,
                                children: [
                                  const Icon(
                                    Icons.mail_outline_outlined,
                                    color: Color(0xffAEB1B3),
                                  ),
                                  Positioned(
                                      top: -5,
                                      child: Container(
                                          width: 15,
                                          height: 15,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red,
                                          ),
                                          child: const Text(' 3',
                                              style: TextStyle(
                                                  color: Color(0xffAEB1B3))))),
                                ]),
                            const SizedBox(width: 15),
                            const Text(
                              'Messages',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff707273)),
                            )
                          ]),
                      custom_column(
                          'Remote Access Scam',
                          '9:33 am, 26 Sep. 17',
                          'The banking industry has seen an increase in customers and businesses receiving cold calls from...',
                          Icons.lock_open_rounded),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 15.0, right: 15, top: 15),
                        child:
                            Divider(thickness: 1.5, color: Color(0xff95989A)),
                      ),
                      custom_column(
                          'Where can I find my IBAN?',
                          '11:45 am, 24 Sep. 17',
                          'You can find your IBAN and BIC, on your account on Online Banking or your account statement...',
                          Icons.headset_mic_rounded),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 20, top: 40),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const wallet_screen()));
                            },
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              width: 310,
                              height: 40,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Color(0xff0078A6),
                                    Color(0xff16CFF3)
                                  ]),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text('View More',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13)),
                              ),
                            )),
                      )
                    ]),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
