import 'package:flutter/material.dart';
import 'package:mutual_fund_app/common/calculation_card_ui.dart';
import 'package:mutual_fund_app/screens/calculation_detail_screen.dart';

class FinancialCalculatorsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cards = [
  {
    'title': 'BASIC CALCY',
    'backgroundColor': Colors.orangeAccent,
    'icon':'assets/financial_screen/basic_calcy.png',
    'width':90.0,
    'height':90.0
  },
  {
    'title': 'ADVANCED CALCY',
    'backgroundColor': Colors.greenAccent,
    'icon':'assets/financial_screen/advance_calcy.png',
    'width':90.0,
    'height':90.0
  },
  {
    'title': 'GOAL ORIENTED CALCY',
    'backgroundColor': Colors.greenAccent,
    'icon':'assets/financial_screen/goal_oriented_calcy.png',
    'width':90.0,
    'height':90.0
  },
  {
    'title': 'INTEREST RECOVERY CALCY',
    'backgroundColor': Colors.orangeAccent,
    'icon':'assets/financial_screen/interest_recovery_calcy.png',
    'width':90.0,
    'height':90.0
  },
  {
    'title': 'CRAZY CALCY',
    'backgroundColor': Colors.greenAccent,
    'icon':'assets/financial_screen/crazy_calcy.png',
    'width':90.0,
    'height':90.0
  }
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FINANCIAL CALCULATORS'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 0.9,
          
          padding: EdgeInsets.symmetric(horizontal: 3.0),
          children: cards.map((card) {
            return CalculationCard(
              title: card['title'],
              titleBackgroundColor: card['backgroundColor'],
              icon: card['icon'],
              width: card['width'],
              height: card['height'],
              currentScreen: 'Home'
            );
          }).toList(),
        ),
      ),
    );
  }
}