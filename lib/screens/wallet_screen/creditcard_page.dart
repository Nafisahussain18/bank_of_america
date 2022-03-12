import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget creditcard_page() {
  final controller = PageController(viewportFraction: 0.8);
  int activeIndex = 1;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
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
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return buildCard(index);
                },
                options: CarouselOptions(
                    height: 165,
                    initialPage: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) => activeIndex = index),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: AnimatedSmoothIndicator(
                  count: 3,
                  effect: const SlideEffect(
                      spacing: 8.0,
                      //radius: 4.0,
                      paintStyle: PaintingStyle.fill,
                      //strokeWidth: 1.5,
                      dotColor: Colors.grey,
                      activeDotColor: Color(0xff707273)),
                  activeIndex: activeIndex,
                ),
              )
            ],
          ),
        ],
      ),
      SizedBox(),
      Container()
    ],
  );
}

Widget buildCard(int index) => Container(
      width: 270,
      height: 165,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient:
              LinearGradient(colors: [Color(0xffD9D9D9), Color(0xffFFFFFF)])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8, bottom: 25),
            child: Image.asset(
                '/Users/nafisahussein/Desktop/FlutterApps/bank_of_america/assests/Mastercard_logo.png'),
          ),
          const Center(
            child: Text(
              '3455  6587  7854  4589',
              style: TextStyle(fontSize: 15, color: Color(0xff95989A)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, right: 200),
            child: Text(
              '02/18',
              style: TextStyle(fontSize: 15, color: Color(0xff95989A)),
            ),
          )
        ],
      ),
    );
