import 'package:financial_app/core/appstyle/fonts.dart';
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Abdelrahman',
                    style: TextStyle(
                      fontFamily: Appfonts.appmainfont,
                      fontSize: 20.sp, 
                      fontWeight: FontWeight.w200,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
