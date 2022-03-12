import 'package:flutter/material.dart';

Widget grid_items({required String title, required String image}) {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          child: Image.asset(image),
        ),
        Text(title),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: 130,
                height: 28,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xff0078A6), Color(0xff16CFF3)]),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text('Details',
                      style: TextStyle(color: Colors.white, fontSize: 13)),
                ),
              )),
        ),
      ],
    ),
  );
}
