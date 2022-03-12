import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';

Widget container_1(DateTime dateTime) {
  return Stack(
    alignment: AlignmentDirectional.topCenter,
    clipBehavior: Clip.none,
    children: [
      Container(
        height: 120,
        width: 340,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Hello John Doe!',
              style: TextStyle(fontSize: 24, color: Color(0xff777879)),
            ),
            Text(
              'Last Login: ${dateTime.year}/${dateTime.month}/${dateTime.day} - ${dateTime.hour}:${dateTime.minute}',
              style: const TextStyle(fontSize: 11, color: Color(0xff777879)),
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
      Positioned(
        top: -40,
        child: Image.asset(
            '/Users/nafisahussein/Desktop/FlutterApps/bank_of_america/assests/Profile.png'),
      ),
    ],
  );
}

Widget container_2() {
  return Container(
    width: 340,
    height: 140,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient:
            LinearGradient(colors: [Color(0xff2189BC), Color(0xff0A496A)])),
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text('Bank Accounts',
              style: TextStyle(color: Color(0xff85C3EC), fontSize: 15)),
        ),
        const Text(
          '2 Active Accounts',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        const Divider(
          thickness: 1.5,
          color: Color(0xff298DAC),
        ),
        const Text('Accounting Balance',
            style: TextStyle(color: Color(0xff85C3EC), fontSize: 15)),
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
            const Text('\$ 6,328.33',
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ],
        )
      ],
    ),
  );
}

Widget custom_column(
    String text1, String text2, String text3, IconData iconData) {
  return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(text1,
                style: const TextStyle(fontSize: 12, color: Color(0xff95989A))),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(text2,
                style: const TextStyle(fontSize: 8, color: Color(0xff95989A))),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(left: 75.0, right: 10),
          child: Text(text3,
              style: const TextStyle(fontSize: 10, color: Color(0xff95989A)),
              maxLines: 2,
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr),
        )
      ]);
}
