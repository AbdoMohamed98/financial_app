import 'package:financial_app/core/appstyle/apptextstyle.dart';
import 'package:financial_app/core/appstyle/colors.dart';
import 'package:financial_app/core/navigation/approutes.dart';
import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:financial_app/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otpverificationview extends StatelessWidget {
  const Otpverificationview ({super.key});

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
                    text: 'OTP Verification\n',
                    style: Apptextstyle.headlines,
                  ),
                  TextSpan(
                    text: 'Enter the email code we just sent to your  \n ',
                    style: Apptextstyle.subtitles,
                  ),
                  TextSpan(
                    text: 'email address.',
                    style: Apptextstyle.subtitles,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 32.h),
          PinCodeTextField(appContext: context, length: 4,
            obscureText: false,
            keyboardType: TextInputType.number,
            textStyle: TextStyle(
              fontSize: 22.sp,
              color: Appcolors.appprimarycolor,
            ),
            
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(8.r),
              fieldHeight: 60.h,
              fieldWidth: 70.w,
              activeFillColor: Colors.white,
              inactiveFillColor: Colors.white,
              selectedFillColor:Appcolors.whitecolor,
              inactiveColor: Color(0xffE5E5E5),
              selectedColor: Appcolors.appprimarycolor,
              activeColor: Appcolors.appprimarycolor,
            ),
            animationDuration: const Duration(milliseconds: 300),
            enableActiveFill: true,
            onCompleted: (value) {},
            onChanged: (value) {}),
          SizedBox(height: 38.h),
          Customelevatedbutton(
            onpressed: () {
              // context.pushNamed( Approutes.forgetpasswordview);
            },
            buttonhight: 56.h,
            buttonwidth: 331.w,
            buttontext: 'Verify',
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
     ));;
  }
}
