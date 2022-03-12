import 'package:bank_of_america/screens/wallet_screen/sharedcontainer.dart';
import 'package:flutter/material.dart';

import 'creditcard_page.dart';

Widget saving(BuildContext context) {
  int index = 1;
  return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Column(
            children: [
              buildCard(index),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Available Balance',
                    style: TextStyle(fontSize: 15, color: Color(0xffAEB1B3))),
              ),
              Row(
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
                      style: TextStyle(color: Color(0xff707273), fontSize: 25)),
                ],
              ),
            ],
          ),
        ]),
    const SizedBox(height: 50),
    transactioncontainer(context),
  ]);
}
