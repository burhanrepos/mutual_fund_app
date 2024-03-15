import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mutual_fund_app/utils/widgets/common_widget.dart';

class CalculationResultScreen extends StatefulWidget {
  final String title;

  CalculationResultScreen({required this.title});

  @override
  State<CalculationResultScreen> createState() => _CalculationResultScreenState();
}

class _CalculationResultScreenState extends State<CalculationResultScreen> {
  late TextEditingController field1Controller;
  late TextEditingController field2Controller;
  late TextEditingController field3Controller;
  late final ValueNotifier<bool> loading;

  @override
  void initState() {
    super.initState();
    field1Controller = TextEditingController();
    field2Controller = TextEditingController();
    field3Controller = TextEditingController();
  }

  calculation_result_UI(result){
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Monthly Investment Amount',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              controller: field1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter amount',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Investment Tenure',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              controller: field2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter tenure',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Return Expected',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              controller: field3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter return rate',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'End value of investments',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              readOnly: true,
              controller: TextEditingController(text: result.toString()),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixText: 'US',
              ),
            ),
          ],
        ),
      );
  }

  int _stackIndex = 1;

  @override
  Widget build(BuildContext context) {
   final url = widget.title =='SIP CALCY'?'https://justasolutionaway.com/sip/':'https://justasolutionaway.com/investment-calculator';
    
    double? result = (double.tryParse(field1Controller.text) ?? 0) +
        (double.tryParse(field2Controller.text) ?? 0) +
        (double.tryParse(field3Controller.text) ?? 0);

    return Scaffold(
      appBar: CommonWidgets.appBar(context, widget.title),
      body:Container(
                  child: InAppWebView(
                    key: UniqueKey(),
        onLoadStop: (controller, url) {
          loading.value = true;
        },
        initialUrlRequest: URLRequest(
          url: WebUri(url),
        )
                  ),
                ),
              );
  }

  @override
  void dispose() {
    field1Controller.dispose();
    field2Controller.dispose();
    field3Controller.dispose();
    super.dispose();
  }
}
