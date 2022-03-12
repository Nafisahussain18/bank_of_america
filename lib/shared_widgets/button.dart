import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Color buttonBackgroundColor;
  String title;
  Color titleColor;
  VoidCallback onTap;
  CustomButton(
      {required this.buttonBackgroundColor,
      required this.title,
      required this.titleColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 16.0, bottom: 16, left: 40, right: 40),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: buttonBackgroundColor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(),
              Text(
                title,
                style: TextStyle(color: titleColor),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: titleColor,
                size: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
