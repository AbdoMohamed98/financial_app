import 'package:financial_app/core/appstyle/apptextstyle.dart';
import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:financial_app/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Createnewpasswordview extends StatelessWidget {
  const Createnewpasswordview ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
       padding:  EdgeInsets.only(left: 22.w, right: 22.w),
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
                    text: 'Create new password\n',
                    style: Apptextstyle.headlines,
                  ),
                  TextSpan(
                    text: 'Your newpassword must be unique fromthose \n ',
                    style: Apptextstyle.subtitles,
                  ),
                  TextSpan(
                    text: 'previously used.',
                    style: Apptextstyle.subtitles,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 32.h),
          Customtextfield(
            customtextfieldhinttext: 'New Password',),
          SizedBox(height: 38.h),
          Customtextfield(
            customtextfieldhinttext: 'New Password',),
          SizedBox(height: 38.h),
          Customelevatedbutton(
            onpressed: () {
              // context.pushNamed( Approutes.createnewpasswordview);
            },
            buttonhight: 56.h,
            buttonwidth: 331.w,
            buttontext: 'Confirm Password',
          ),
         
          ]
    
      ),));
    
  }
}