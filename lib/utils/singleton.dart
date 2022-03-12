import 'package:bank_of_america/Model/transactiondetails.dart';
import 'package:flutter/material.dart';

class Singleton {
  static final Singleton preferance = Singleton();

  List<Transaction_detailsModel> productList = [
    Transaction_detailsModel(
        Date: '29 Sep. 17',
        retail: 'ZARA Store Mall Sofia',
        amount: '\$ 45.99',
        icon: Icons.trending_down),
    Transaction_detailsModel(
        Date: '29 Sep. 17',
        retail: 'REWE Store',
        amount: '\$ 109.99',
        icon: Icons.trending_down),
    Transaction_detailsModel(
        Date: '26 Sep. 17',
        retail: 'NIKE Factory Store',
        amount: '\$ 499.99',
        icon: Icons.trending_down),
    Transaction_detailsModel(
        Date: '24 Sep. 17',
        retail: 'Cash Desk Deposit',
        amount: '\$ 300.00',
        icon: Icons.trending_up),
    Transaction_detailsModel(
        Date: '24 Sep. 17',
        retail: 'Cash Desk Deposit',
        amount: '\$ 300.00',
        icon: Icons.trending_down),
    Transaction_detailsModel(
        Date: '24 Sep. 17',
        retail: 'Cash Desk Deposit',
        amount: '\$ 300.00',
        icon: Icons.trending_down),
    Transaction_detailsModel(
        Date: '24 Sep. 17',
        retail: 'Cash Desk Deposit',
        amount: '\$ 300.00',
        icon: Icons.trending_up),
    Transaction_detailsModel(
        Date: '24 Sep. 17',
        retail: 'Cash Desk Deposit',
        amount: '\$ 300.00',
        icon: Icons.trending_down),
    Transaction_detailsModel(
        Date: '24 Sep. 17',
        retail: 'Cash Desk Deposit',
        amount: '\$ 300.00',
        icon: Icons.trending_up),
    Transaction_detailsModel(
        Date: '24 Sep. 17',
        retail: 'Cash Desk Deposit',
        amount: '\$ 300.00',
        icon: Icons.trending_down),
    Transaction_detailsModel(
        Date: '24 Sep. 17',
        retail: 'Cash Desk Deposit',
        amount: '\$ 300.00',
        icon: Icons.trending_down),
  ];
}
