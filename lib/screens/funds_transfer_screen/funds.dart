import 'package:bank_of_america/shared_widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../../shared_widgets/background.dart';
import '../../shared_widgets/credit_saving_container.dart';

class fund_screen extends StatefulWidget {
  const fund_screen({Key? key}) : super(key: key);

  @override
  State<fund_screen> createState() => _fund_screenState();
}

class _fund_screenState extends State<fund_screen> {
  final globalKey = GlobalKey<ScaffoldState>();
  double rating = 0;
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
            'FUNDS TRANSFER',
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
          padding: const EdgeInsets.only(top: 100),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            //container 1
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: 340.39,
                height: 128,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 4, left: 15, right: 15, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              '/Users/nafisahussein/Desktop/FlutterApps/bank_of_america/assests/Profile.png',
                              width: 52,
                              height: 52,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('SENDER',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffAEB1B3))),
                                  Text('Johnes Patric Doel',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffAEB1B3),
                                          fontWeight: FontWeight.bold))
                                ]),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 81.5,
                                height: 38,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.white,
                                ),
                                child: const Center(
                                    child: Text(
                                  'Manage',
                                  style: TextStyle(color: Color(0xffAEB1B3)),
                                )),
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        manager_buttom(
                            name: 'USD',
                            icon: 'assests/usd_dollar.png',
                            width: 95.1,
                            height: 38),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              width: 203.4,
                              height: 38,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 8,
                                  ),
                                ],
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                              ),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8),
                                  child: Image.asset(
                                      'assests/Mastercard-logo.png'),
                                ),
                                const Text(
                                  'Credit Card **56',
                                  style: TextStyle(color: Color(0xffAEB1B3)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Icon(Icons.keyboard_arrow_down),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(children: [
              Container(
                width: 85,
                height: 85,
                margin: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('AMOUNT',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffAEB1B3))),
                    Text('\$ 500.00',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xffEC5656)))
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text('Money Limit',
                          style: TextStyle(
                              fontSize: 15, color: Color(0xffAEB1B3))),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text('\$ 1,500.00',
                          style: TextStyle(
                              fontSize: 18, color: Color(0xffAEB1B3))),
                    ),
                    Slider(
                        max: 100,
                        value: rating,
                        onChanged: (newRating) => setState(() {
                              rating = newRating;
                            })),
                  ],
                ),
              ),
            ]),

            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                width: 340.39,
                height: 124,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 4, left: 10, right: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assests/Profile1.png'),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('RECEPIENT',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.red)),
                                  Text('Ana Jane Roe',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffAEB1B3),
                                          fontWeight: FontWeight.bold))
                                ]),
                            const Expanded(child: SizedBox(width: 10)),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 81.5,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.4),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    color: Colors.white,
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Manage',
                                    style: TextStyle(color: Color(0xffAEB1B3)),
                                  )),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        manager_buttom(
                            name: 'EUR',
                            icon: 'assests/euro_icon.png',
                            width: 95.1,
                            height: 38),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 203,
                            height: 38,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 8,
                                  ),
                                ],
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                gradient: const LinearGradient(colors: [
                                  Color(0xffEC5656),
                                  Color(0xffFF984A)
                                ])),
                            child: const Center(
                                child: Text(
                              'Transfer',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                width: 340.39,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.access_time_rounded,
                              color: Color(0xffAEB1B3)),
                          SizedBox(width: 15),
                          Text('History of Transactions',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff707273)))
                        ]),
                  ),
                  TransactionsRow('assests/profile2.png',
                      date: '17 Sep. 17',
                      price: '\$ 100.00',
                      retail: 'Maryan Johans Kl...'),
                  const Divider(
                    thickness: 1.5,
                    color: Color(0xff298DAC),
                    height: 0.5,
                  ),
                  TransactionsRow('assests/profile3.png',
                      retail: 'Vanessa Sinkly Da...',
                      date: '17 Sep. 17',
                      price: '\$ 50.00'),
                ])),
          ]),
        ),
      ]),
    );
  }
}

Widget manager_buttom(
    {required String name,
    required String icon,
    required double height,
    required double width}) {
  return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Image.asset(icon),
          ),
          Text(name,
              style: const TextStyle(color: Color(0xffAEB1B3), fontSize: 13)),
        ]),
      ));
}
