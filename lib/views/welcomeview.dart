import 'package:financial_app/core/appstyle/fonts.dart';
import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcomeview extends StatelessWidget {
  const Welcomeview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
         SizedBox(
  height: 570.h,
  width: double.infinity,
  child: Image.asset(
    'assets/images/generated.png',
    fit: BoxFit.cover,
    
  ),
),

          Customelevatedbutton(),
          SizedBox(
            height: 20.h,
          ),
          Customelevatedbutton(),
           SizedBox(
            height: 20.h,
          ),
          Text('continue  a guest',style: TextStyle(
            fontFamily: Appfonts.appmainfont,
            fontSize: 15.sp,
          ),)
        ],
      ),
    );
  }
}