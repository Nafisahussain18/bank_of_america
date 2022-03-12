import 'package:bank_of_america/screens/dashboard_screen/dashboard_screen.dart';
import 'package:bank_of_america/screens/funds_transfer_screen/funds.dart';
import 'package:bank_of_america/screens/products_screen/products.dart';
import 'package:bank_of_america/screens/utility_bills_screen/bills.dart';
import 'package:bank_of_america/screens/wallet_screen/wallet.dart';
import 'package:flutter/material.dart';

final name = 'Hello John Doe!';
final email = 'john.doe@gmail.com';
final urlImage =
    '/Users/nafisahussein/Desktop/FlutterApps/bank_of_america/assests/Profile.png';
Drawer custom_drawer(BuildContext context) {
  return Drawer(
    child: Material(
      child: ListView(
        children: [
          buildHeader(urlImage: urlImage, name: name, email: email),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildMenuItem(
                        text: 'DASHBOARD',
                        image: 'assests/drawer_icons/dashboard.png',
                        onClicked: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const dashboard_screen()));
                        },
                      ),
                      buildMenuItem(
                          text: 'WALLET',
                          image: 'assests/drawer_icons/wallet.png',
                          onClicked: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const wallet_screen()));
                          }),
                      buildMenuItem(
                          text: 'MESSAGES',
                          image: 'assests/drawer_icons/message.png',
                          onClicked: () {}),
                      buildMenuItem(
                          text: 'UTILITY BILLS',
                          image: 'assests/drawer_icons/bills.png',
                          onClicked: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const bills_screen()));
                          }),
                      buildMenuItem(
                          text: 'FUNDS TRANSFER',
                          image: 'assests/drawer_icons/transfer.png',
                          onClicked: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const fund_screen()));
                          }),
                      buildMenuItem(
                          text: 'BRANCHES',
                          image: 'assests/drawer_icons/branshes.png',
                          onClicked: () {}),
                      buildMenuItem(
                          text: 'SETTINGS',
                          image: 'assests/drawer_icons/settings.png',
                          onClicked: () {}),
                      buildMenuItem(
                          text: 'PRODUCTS',
                          image:
                              '/Users/nafisahussein/Desktop/FlutterApps/bank_of_america/assests/drawer_icons/products_icons.png',
                          onClicked: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const products_page()));
                          }),
                      buildMenuItem(
                          text: 'CONTACT',
                          image: 'assests/drawer_icons/contact.png',
                          onClicked: () {}),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: InkWell(
                            onTap: () {},
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text('Log out',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13)),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.logout,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            )),
                      ),
                    ]),
              )),
        ],
      ),
    ),
  );
}

Widget buildHeader({
  required String urlImage,
  required String name,
  required String email,
}) =>
    Container(
      width: 234.97,
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff176697), Color(0xff4FC3E6)])),
      child: Row(
        children: [
          Image.asset(urlImage),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 17, color: Colors.white),
              ),
              const SizedBox(height: 4),
              Text(
                email,
                style: const TextStyle(fontSize: 11, color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
Widget buildMenuItem({
  required String text,
  required String image,
  VoidCallback? onClicked,
}) {
  final hoverColor = Colors.white70;

  return ListTile(
    leading: Image.asset(image),
    title: Text(text,
        style: const TextStyle(color: Color(0xffAEB1B3), fontSize: 14)),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}
