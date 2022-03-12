import 'package:bank_of_america/screens/wallet_screen/details_screen.dart';
import 'package:flutter/material.dart';

import '../../shared_widgets/credit_saving_container.dart';

Widget transactioncontainer(BuildContext context) {
  return Container(
      height: 400,
      width: 340,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Icon(Icons.access_time_rounded, color: Color(0xffAEB1B3)),
            SizedBox(width: 15),
            Text('History of Transactions',
                style: TextStyle(fontSize: 15, color: Color(0xff707273)))
          ]),
        ),
        TransactionsRow('assests/transaction/zara.png',
            date: '29 Sep. 17', price: '\$ 49.99', retail: 'ZARA Mall Sof...'),
        const Divider(thickness: 1.5, color: Color(0xff298DAC)),
        TransactionsRow('assests/transaction/renow.png',
            retail: 'REWE N23 Sof...', date: '29 Sep. 17', price: '\$ 76.45'),
        const Divider(thickness: 1.5, color: Color(0xff298DAC)),
        TransactionsRow('assests/transaction/nike.png',
            retail: 'Nike Town Sof...', date: '29 Sep. 17', price: '\$ 109.99'),
        const Divider(thickness: 1.5, color: Color(0xff298DAC)),
        TransactionsRow('assests/transaction/carefure.png',
            retail: 'Carrefour Sofia...',
            date: '28 Sep. 17',
            price: '\$ 15.33'),
        Container(
            width: 310,
            height: 40,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff0078A6), Color(0xff16CFF3)]),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const details_screen()));
              },
              child: const Center(
                child: Text(
                  'View Transactions',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ))
      ]));
}
