import 'package:bank_of_america/screens/wallet_screen/creditcard_page.dart';
import 'package:bank_of_america/screens/wallet_screen/saving_page.dart';
import 'package:bank_of_america/screens/wallet_screen/sharedcontainer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:scroll_navigation/scroll_navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../shared_widgets/background.dart';
import '../../shared_widgets/custom_drawer.dart';

class wallet_screen extends StatefulWidget {
  const wallet_screen({Key? key}) : super(key: key);

  @override
  State<wallet_screen> createState() => _wallet_screenState();
}

class _wallet_screenState extends State<wallet_screen> {
  final globalKey = GlobalKey<ScaffoldState>();
  final controller = PageController(viewportFraction: 0.8);
  int activeIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawerEnableOpenDragGesture: false,
      key: globalKey,
      drawer: custom_drawer(context),
      body: Stack(alignment: AlignmentDirectional.center, children: [
        BackgroundImage(),
        const Positioned(
          top: 50,
          child: Text(
            'WALLET',
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
              "CREDIT CARD",
              "SAVING",
            ],
            pages: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //part 1
                  const SizedBox(height: 20),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Positioned(
                        top: 30,
                        right: 10,
                        left: 10,
                        child: Center(
                          child: Container(
                            width: 340,
                            height: 260,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          CarouselSlider.builder(
                            itemCount: 3,
                            itemBuilder: (context, index, realIndex) {
                              return buildCard(index);
                            },
                            options: CarouselOptions(
                                height: 165,
                                initialPage: 1,
                                enableInfiniteScroll: false,
                                onPageChanged: (index, reason) =>
                                    setState(() => activeIndex = index)),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: AnimatedSmoothIndicator(
                              count: 3,
                              effect: const SlideEffect(
                                  spacing: 8.0,
                                  paintStyle: PaintingStyle.fill,
                                  dotColor: Colors.grey,
                                  activeDotColor: Color(0xff707273)),
                              activeIndex: activeIndex,
                            ),
                          ),
                          const Text('Available Balance',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xffAEB1B3))),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 12,
                                    height: 12,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff1ACDF0),
                                    )),
                                const SizedBox(width: 15),
                                const Text('\$ 1,448.00',
                                    style: TextStyle(
                                        color: Color(0xff707273),
                                        fontSize: 25)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  //transaction
                  transactioncontainer(context),
                ],
              ),
              saving(context),
            ],
          ),
        ),
      ]),
    );
  }
}
