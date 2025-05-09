import 'package:financial_app/core/appstyle/apptextstyle.dart';
import 'package:financial_app/core/navigation/approutes.dart';
import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:financial_app/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Forgetpasswordview extends StatelessWidget {
  const Forgetpasswordview({super.key});

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
                    text: 'Forget Password?\n',
                    style: Apptextstyle.headlines,
                  ),
                  TextSpan(
                    text: 'Don\'t worry! it occures . pleaze enter the email \n ',
                    style: Apptextstyle.subtitles,
                  ),
                  TextSpan(
                    text: 'address linked to your account.',
                    style: Apptextstyle.subtitles,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 32.h),
          Customtextfield(
            customtextfieldhinttext: 'Enter your email',),
          SizedBox(height: 38.h),
          Customelevatedbutton(
            onpressed: () {
              // context.pushNamed( Approutes.forgetpasswordview);
            },
            buttonhight: 56.h,
            buttonwidth: 331.w,
            buttontext: 'Send code',
          ),
          SizedBox(
            height: 361.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Remember password?', style: TextStyle(
                color: Color(0xff617AFD),
              ),),
              GestureDetector(
                onTap: () {
                  context.pushNamed(Approutes.loginview);
                },
                child: Text('Login',style: TextStyle(
                  color: Color(0xff202955),
                ),),
              )
            ],
          ),
         
       
           
           ]),
     ));
  }
}