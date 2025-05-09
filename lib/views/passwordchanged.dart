import 'package:financial_app/core/appstyle/apptextstyle.dart';
import 'package:financial_app/core/navigation/approutes.dart';
import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Passwordchanged extends StatelessWidget {
  const Passwordchanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        
        children: [
          SizedBox(
            height: 248.h,
          ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SizedBox(
              height:100.h ,
              width:100.h ,
              child: Image.asset('assets/images/Successmark.png')
             ),
           ],
         ) ,
         SizedBox(
          height: 38.h,
         ),
     
            RichText(
              textAlign:TextAlign.center 
              
              ,text: TextSpan(
              children: [
                TextSpan(
                  text: 'PasswordChanged\n',
                  style: Apptextstyle.headlines
                ),
                TextSpan(
                  text: 'your password has been changed\n ',
                  style: Apptextstyle.subtitles
                ),
                 TextSpan(
                  text: 'successfully ',
                  style: Apptextstyle.subtitles
                ),
                
              ]
            ),
            
            ),
            SizedBox(
              height: 40.h,
            ),
            Customelevatedbutton(
              buttontext: 'Back to login',
              onpressed: () {
                context.pushNamed(Approutes.loginview);
              },
            )
         
          
        ],
      )
    );
  }
}