import 'package:flutter/material.dart';
import 'package:mutual_fund_app/common/calculation_card_ui.dart';
import 'package:mutual_fund_app/utils/widgets/common_widget.dart';

class CalculationDetailScreen extends StatefulWidget {
  const CalculationDetailScreen({super.key,required this.title});
  final String title;
  @override
  State<CalculationDetailScreen> createState() => _CalculationDetailScreenState();
}

class _CalculationDetailScreenState extends State<CalculationDetailScreen> {
  final List<Map<String, dynamic>> cards = [
  {
    'title': 'SIP CALCY',
    'backgroundColor': Colors.orangeAccent,
    'icon':'assets/financial_screen/basic_calcy.png',
    'width':90.0,
    'height':90.0
  },
  {
    'title': 'STEP CALCY',
    'backgroundColor': Colors.greenAccent,
    'icon':'assets/financial_screen/advance_calcy.png',
    'width':90.0,
    'height':90.0
  },
  {
    'title': 'LUMPSUM CALCY',
    'backgroundColor': Colors.greenAccent,
    'icon':'assets/financial_screen/goal_oriented_calcy.png',
    'width':90.0,
    'height':90.0
  },
  {
    'title': 'FUTURE VALUE CALCY',
    'backgroundColor': Colors.orangeAccent,
    'icon':'assets/financial_screen/interest_recovery_calcy.png',
    'width':90.0,
    'height':90.0
  },
  {
    'title': 'SIP NEED CALCY',
    'backgroundColor': Colors.greenAccent,
    'icon':'assets/financial_screen/crazy_calcy.png',
    'width':90.0,
    'height':90.0
  },
  {
    'title': 'LUMPSUM NEED CALCY',
    'backgroundColor': Colors.orangeAccent,
    'icon':'assets/financial_screen/advance_calcy.png',
    'width':90.0,
    'height':90.0
  }
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.appBar(context,widget.title),
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
              currentScreen: 'Calculation Detail',
            );
          }).toList(),
        ),
      ),
    );
  }
}