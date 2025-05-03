import 'package:financial_app/widgets/customelevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Passwordchanged extends StatelessWidget {
  const Passwordchanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
           SizedBox(
                height: 56.h,
                width: 105.w,
                child: Image.asset('assets/images/google.png',fit: BoxFit.cover,),
              ),
              SizedBox(
                height: 56.h,
                width: 105.w,
                child: Text('gsrgrtgrgrmgk'),
              ),
              Customelevatedbutton(),
          
        ],
      )
    );
  }
}