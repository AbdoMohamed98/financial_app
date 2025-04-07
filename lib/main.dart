import 'package:financial_app/core/appstyle/colors.dart';
import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:financial_app/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const FinancialApp());
}

class FinancialApp extends StatelessWidget {
  const FinancialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
  designSize: const Size(1034, 613), 
  minTextAdapt: true,
  builder: (context, child) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Customtextfield()
        ),
      ),
    );
  },
  child: const SizedBox(), // 👈 ADD THIS!
);

  }
}
