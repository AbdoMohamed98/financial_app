import 'package:flutter/material.dart';

void main() {
  runApp(FinancialApp());
}

class FinancialApp extends StatelessWidget {
  const FinancialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Column(
        children:[
         Text('abdelrahman',style: TextStyle(
          fontFamily:'Urbanist' ,
          fontSize: 20  ,
          fontWeight: FontWeight.w200 ,
          color: Colors.amber
        ),),
      ]),
    );
  }
}
