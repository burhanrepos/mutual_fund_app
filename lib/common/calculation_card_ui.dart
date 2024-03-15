
import 'package:flutter/material.dart';
import 'package:mutual_fund_app/screens/calculation_detail_screen.dart';
import 'package:mutual_fund_app/screens/calculation_result_screen.dart';

class CalculationCard extends StatelessWidget {
  final String title;
  final Color titleBackgroundColor;
  final String icon;
  final double width;
  final double height;
  final String currentScreen;

  CalculationCard({
    required this.title,
    required this.titleBackgroundColor,
    required this.icon,
    required this.width,
    required this.height,
    required this.currentScreen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final comparision = currentScreen =='Home'?currentScreen:title.split(' ')[0];
        switch(comparision){
          case 'Home':
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CalculationDetailScreen(title: title),
          ),
        );
        break;
        case 'SIP':
        print("hhhhhhhhhhhhhhhh");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CalculationResultScreen(title: title),
          ),
        );
        break;
        }
      },
      child: Card(
        elevation: 4.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8.0),
            Container(
              color: titleBackgroundColor,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
