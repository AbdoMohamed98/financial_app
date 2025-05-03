import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:financial_app/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Regesterview extends StatelessWidget {
  const Regesterview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(
            height: 78,
            width: 331,
            child: Text('Hello! regester to get started'),
          ),
          Customtextfield(),
          Customtextfield(),
          Customtextfield(),
          Customtextfield(),
          Customelevatedbutton(),
          Text('or regester with'),
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
          )

        ],
      ) ,
    );
  }
}