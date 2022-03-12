import 'package:bank_of_america/Model/transactiondetails.dart';
import 'package:bank_of_america/screens/dashboard_screen/usedwidget.dart';
import 'package:flutter/material.dart';
import 'package:scroll_navigation/navigation/title_scroll_navigation.dart';
import 'package:scroll_navigation/scroll_navigation.dart';

import '../../shared_widgets/background.dart';
import '../../shared_widgets/custom_drawer.dart';
import '../../utils/singleton.dart';

class details_screen extends StatefulWidget {
  const details_screen({Key? key}) : super(key: key);

  @override
  State<details_screen> createState() => _details_screenState();
}

class _details_screenState extends State<details_screen> {
  final globalKey = GlobalKey<ScaffoldState>();
  final controller = PageController(viewportFraction: 0.8);
  int activeIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            pages: [pages(), pages()],
          ),
        ),
      ]),
    );
  }

  Widget Transationdetails(
      {required Transaction_detailsModel transaction,
      required BuildContext ctx,
      required int inx}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  transaction.Date,
                  style:
                      const TextStyle(color: Color(0xff707273), fontSize: 11),
                ),
                Text(
                  transaction.retail,
                  style:
                      const TextStyle(color: Color(0xffAEB1B3), fontSize: 11),
                ),
                Text(
                  transaction.amount,
                  style:
                      const TextStyle(color: Color(0xff707273), fontSize: 11),
                ),
                Icon(
                  transaction.icon,
                  color: (transaction.icon == Icons.trending_down)
                      ? Colors.red
                      : Colors.green,
                )
              ]),
        ),
        const Divider(color: Color(0xffAEB1B3))
      ],
    );
  }

  Widget pages() {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
      child: Container(
        width: 340.39,
        height: 496.1,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.access_time, color: Color(0xff707273)),
                    Text('History of Transactions',
                        style:
                            TextStyle(color: Color(0xff707273), fontSize: 15))
                  ]),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: Singleton.preferance.productList.length,
                  itemBuilder: (ctx, index) {
                    return Transationdetails(
                        transaction: Singleton.preferance.productList[index],
                        ctx: context,
                        inx: index);
                  }),
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
          ],
        ),
      ),
    );
  }
}
