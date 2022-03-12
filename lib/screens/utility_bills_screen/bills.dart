import 'package:bank_of_america/screens/utility_bills_screen/pending.dart';
import 'package:bank_of_america/screens/utility_bills_screen/subscriptions.dart';
import 'package:flutter/material.dart';
import 'package:scroll_navigation/scroll_navigation.dart';

import '../../shared_widgets/background.dart';
import '../../shared_widgets/custom_drawer.dart';

class bills_screen extends StatefulWidget {
  const bills_screen({Key? key}) : super(key: key);

  @override
  State<bills_screen> createState() => _bills_screenState();
}

class _bills_screenState extends State<bills_screen> {
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: globalKey,
      drawer: custom_drawer(context),
      body: Stack(alignment: AlignmentDirectional.center, children: [
        BackgroundImage(),
        const Positioned(
          top: 50,
          child: Text(
            'UTILITY BILLS',
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
        ),
        Positioned(
          right: 15,
          top: 45,
          child: InkWell(
              child: Image.asset(
                  '/Users/nafisahussein/Desktop/FlutterApps/bank_of_america/assests/Meun.png'),
              onTap: () => globalKey.currentState?.openDrawer()),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: TitleScrollNavigation(
              barStyle: const TitleNavigationBarStyle(
                background: Colors.transparent,
                activeColor: Colors.white,
                deactiveColor: Colors.white,
                style: TextStyle(fontSize: 15, color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                spaceBetween: 80,
              ),
              titles: const [
                "PENDING",
                "SUBSCRIPTIONS",
              ],
              pages: [
                pending_page(),
                subscriptions_page(),
              ],
            ))
      ]),
    );
  }
}
