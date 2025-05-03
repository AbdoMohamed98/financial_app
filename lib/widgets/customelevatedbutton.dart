import 'package:financial_app/core/appstyle/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customelevatedbutton extends StatelessWidget {
  const Customelevatedbutton({
    super.key,
    this.onpressed,
    this.buttontext,
    this.buttontextcolor,
    this.buttoncolor, 
    this.buttonhight,
    this.buttonwidth,
    this.buttonborderradius,
  });

  final void Function()? onpressed;
  final String? buttontext;
  final Color? buttontextcolor;
  final Color? buttoncolor; 
  final double? buttonhight;
  final double? buttonwidth;
  final double? buttonborderradius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttoncolor ?? Appcolors.appprimarycolor, 
        fixedSize: Size(
          buttonwidth ?? 331.w,
          buttonhight ?? 56.h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            buttonborderradius ?? 8.r,
          ),
        ),
      ),
      child: Text(
        buttontext ?? '',
        style: TextStyle(
          color: buttontextcolor ?? const Color(0xffFFFFFF),
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
