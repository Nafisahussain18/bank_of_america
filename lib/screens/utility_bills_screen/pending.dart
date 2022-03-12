import 'package:flutter/material.dart';

Widget pending_page() {
  return Column(children: [
    Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Container(
        width: 340.39,
        height: 110,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
        child: container_column(
          bill_type: 'Electricity Bill',
          image: 'assests/elec_bill.png',
          amount: '\$ 176.99',
          colors: [const Color(0xffFFFFFF), const Color(0xffFFFFFF)],
          colorfont: Color(0xffAEB1B3),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: 340.39,
        height: 110,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
        child: container_column(
            image: 'assests/water_bill.png',
            bill_type: 'Water Bill',
            amount: '\$ 48.43',
            colorfont: Colors.white,
            colors: [const Color(0xffEC5656), const Color(0xffFF984A)]),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: 340.39,
        height: 240,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 15),
              child: Image.asset(
                  '/Users/nafisahussein/Desktop/FlutterApps/bank_of_america/assests/tv_bill.png'),
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('TV Monthly Subscribe',
                        style: TextStyle(color: Color(0xff707273))),
                    Text('\$ 29.99',
                        style: TextStyle(color: Color(0xffEC5656))),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
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
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text(
                    'Pay',
                    style: TextStyle(color: Color(0xffAEB1B3)),
                  )),
                ),
              ),
            ),
            const SizedBox(width: 20)
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Text('Process Date',
                        style: TextStyle(color: Color(0xff707273))),
                  ),
                  Text(
                    'Wed, Nov. 03, 2017',
                    style: TextStyle(color: Color(0xffEC5656), fontSize: 11),
                  ),
                  SizedBox(width: 20),
                ]),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(color: Color(0xffEFF1F2), thickness: 1.5),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Payment Method',
                style: TextStyle(color: Color(0xff707273))),
            const SizedBox(width: 20),
            const Text(
              'Master Card  **** 3456',
              style: TextStyle(color: Color(0xffAEB1B3), fontSize: 9),
            ),
            Image.asset(
                '/Users/nafisahussein/Desktop/FlutterApps/bank_of_america/assests/icon_mastercard.png'),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(color: Color(0xffEFF1F2), thickness: 1.5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Text('Autopay',
                        style: TextStyle(color: Color(0xff707273))),
                  ),
                  //Icon(Icons.on)
                  SizedBox(width: 20),
                ]),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(color: Color(0xffEFF1F2), thickness: 1.5),
          ),
          Container(
              width: 310,
              height: 40,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff0078A6), Color(0xff16CFF3)]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: InkWell(
                onTap: () {},
                child: const Center(
                  child: Text(
                    'View Transactions',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ))
        ]),
      ),
    ),
  ]);
}

Widget container_column(
    {required String image,
    required String bill_type,
    required String amount,
    required List<Color> colors,
    required Color colorfont}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 15),
            child: Image.asset(image),
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(bill_type, style: const TextStyle(color: Color(0xff707273))),
              Text(amount, style: const TextStyle(color: Color(0xffEC5656))),
            ]),
          ),
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
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(colors: colors)),
              child: Center(
                  child: Text(
                'Pay',
                style: TextStyle(color: colorfont),
              )),
            ),
          ),
          const SizedBox(width: 20)
        ]),
      ),
      InkWell(
        onTap: () {},
        child: Container(
          width: 306,
          height: 38,
          decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xff0078A6), Color(0xff16CFF3)]),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Details',
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              SizedBox(width: 20),
              Icon(Icons.arrow_drop_down_sharp, color: Colors.white)
            ],
          )),
        ),
      ),
    ],
  );
}
