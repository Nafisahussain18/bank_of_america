import 'package:flutter/material.dart';

class Transaction_detailsModel {
  String Date;
  String retail;
  String amount;
  IconData icon;

  Transaction_detailsModel(
      {required this.Date,
      required this.retail,
      required this.amount,
      required this.icon});
}
