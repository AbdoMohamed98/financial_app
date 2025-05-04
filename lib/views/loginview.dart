import 'package:financial_app/core/appstyle/apptextstyle.dart';

import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:financial_app/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 22.w, right: 22.w),
      child: Column(
        children: [
          SizedBox(
            height: 56.h,
            width: double.infinity,
          ),
          Row(
            children: [
              SizedBox(
                height: 41.h,
                width: 41.h,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/back.png',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 28.h,
          ),
          SizedBox(
            height: 78.h,
            width: double.infinity,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome back!\n',
                    style: Apptextstyle.headlines,
                  ),
                  TextSpan(
                    text: 'Again!',
                    style: Apptextstyle.headlines,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 32.h),
          Customtextfield(
            customtextfieldhinttext: 'Enter your email',
          ),
          SizedBox(height: 15.h),
          Customtextfield(
            customtextfieldhinttext: 'enter your password',
            suffixIcon: Icon(
              Icons.visibility_off_sharp,
              color: Color(0xff6A707C),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'forget password?',
              style: TextStyle(
                color: Color(0xff6A707C),
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Customelevatedbutton(
            onpressed: () {},
            buttontext: 'Login',
          ),
          SizedBox(
            height: 35.h,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  'or login with',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 22.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 56.h,
                width: 105.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  // 👈 Ensures icon is centered
                  child: SvgPicture.asset(
                    'assets/images/facebook_ic.svg',
                    height: 26.h,
                    width: 26.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                height: 56.h,
                width: 105.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  // 👈 Ensures icon is centered
                  child: SvgPicture.asset(
                    'assets/images/google_ic.svg',
                    height: 26.h,
                    width: 26.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                height: 56.h,
                width: 105.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
               
                  child: SvgPicture.asset(
                    'assets/images/cib_apple.svg',
                    height: 26.h,
                    width: 26.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 155.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Text('dont have an account?'),
          ),
        ],
      ),
    ));
  }
}
