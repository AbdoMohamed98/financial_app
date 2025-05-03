import 'package:financial_app/core/appstyle/colors.dart';
import 'package:financial_app/core/appstyle/fonts.dart';
import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcomeview extends StatelessWidget {
  const Welcomeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(
            height: 20.h,
          ),
          Customelevatedbutton(
            onpressed: () {
              Navigator.pushNamed(context, '/loginview');
            },
            buttonhight: 56.h,
            buttonwidth: 331.w,
            buttontext: 'Login',

          ),
          SizedBox(
            height: 15.h,
          ),
          Customelevatedbutton(
            onpressed: () {},
            buttontext: 'Register',
            buttontextcolor: Appcolors.appprimarycolor,
            buttoncolor: Appcolors.whitecolor,
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            'continue as a guest',
            style: TextStyle(
              fontFamily: Appfonts.appmainfont,
              fontSize: 15.sp,
            ),
          )
        ],
      ),
    );
  }
}
