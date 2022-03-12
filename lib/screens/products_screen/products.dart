import 'package:bank_of_america/screens/products_screen/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'Items.dart';
import '../../shared_widgets/background.dart';

class products_page extends StatefulWidget {
  const products_page({Key? key}) : super(key: key);

  @override
  State<products_page> createState() => _products_pageState();
}

class _products_pageState extends State<products_page> {
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          SafeArea(
            child: Column(children: [
              Row(
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.arrow_back_ios, color: Colors.white),
                      label: const Text(
                        'Back',
                        style: TextStyle(color: Colors.white),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Image.asset("assests/logo_title.png"),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 17, left: 17, right: 17),
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      buildSearchField(),
                      grid_items(
                          title: 'CREDIT CARDS',
                          image: 'assests/products/credit_card.png'),
                      grid_items(
                          title: 'CHECKINGS AND LOANS',
                          image: 'assests/products/checking.png'),
                      grid_items(
                          title: 'AUTO LOANS',
                          image: 'assests/products/loans.png'),
                      grid_items(
                          title: 'HOME LOANS',
                          image: 'assests/products/home_loans.png'),
                      grid_items(
                          title: 'INVESTMENTS',
                          image: 'assests/products/investments.png'),
                      grid_items(
                          title: 'SMALL BUSINESS',
                          image: 'assests/products/small_business.png'),
                      grid_items(
                          title: 'INVESTMENTS',
                          image: 'assests/products/investments.png'),
                      grid_items(
                          title: 'INVESTMENTS',
                          image: 'assests/products/investments.png'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30)
            ]),
          ),
        ],
      ),
    );
  }
}
