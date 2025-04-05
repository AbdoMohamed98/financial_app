import 'package:financial_app/core/appstyle/fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FinancialApp());
}

class FinancialApp extends StatelessWidget {
  const FinancialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children:[
         Text('abdelrahman',style: TextStyle(
          fontFamily:Appfonts.appmainfont ,
          fontSize: 20  ,
          fontWeight: FontWeight.w200 ,
          color: Colors.amber
        ),),
      ]),
    );
  }
}
