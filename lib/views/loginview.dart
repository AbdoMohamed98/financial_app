import 'package:financial_app/core/appstyle/apptextstyle.dart';
import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:financial_app/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text('Welcome back',style: Apptextstyle.headlines),
                ],
              ),
              Column(children: [
                Text('Again',style: Apptextstyle.headlines),
              ],)
            ],
          ),
          Customtextfield(),
          Customtextfield(),
          Text('forget password?',style: TextStyle(
            color: Color(0xff6A707C),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),),
          Customelevatedbutton(),
          Text('or login with'),
          Row(
            children: [
              SizedBox(
                height: 56.h,
                width: 105.w,
                child: Image.asset('assets/images/google.png',fit: BoxFit.cover,),
              ),
               SizedBox(
                height: 56.h,
                width: 105.w,
                child: Image.asset('assets/images/google.png',fit: BoxFit.cover,),
              ),
               SizedBox(
                height: 56.h,
                width: 105.w,
                child: Image.asset('assets/images/google.png',fit: BoxFit.cover,),
              ),
              
            ],
          ),
          Text('dont have an account?'),
              Text('Regester Now')
        ],
      )
    );
  }
}