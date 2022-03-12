import 'package:flutter/material.dart';

Widget TransactionsRow(String? image,
    {required String retail, required String date, required String price}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(image!, height: 28.5, width: 28.5),
        Text(
          date,
          style: const TextStyle(fontSize: 11, color: Color(0xff95989A)),
        ),
        Text(
          retail,
          style: const TextStyle(fontSize: 11, color: Color(0xffAEB1B3)),
        ),
        Text(
          price,
          style: const TextStyle(fontSize: 11, color: Color(0xff707273)),
        ),
        const Icon(Icons.trending_down, color: Colors.red)
      ],
    ),
  );
}
