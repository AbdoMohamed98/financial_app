import 'package:financial_app/core/appstyle/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key,this.customtextfieldcursorcolor, this.customtextfieldhinttext, this.customtextfieldhintcolor, this.textfieldborderradius,  this.textfieldbordercolor});
       final Color? customtextfieldcursorcolor;
       final String? customtextfieldhinttext;
        final Color?  customtextfieldhintcolor;
        final double? textfieldborderradius;
        final Color? textfieldbordercolor;
  @override
  Widget build(BuildContext context) {
    return TextField(
          autofocus: false,
          cursorColor:customtextfieldcursorcolor ?? Appcolors.appsecondarycolor ,
          decoration:InputDecoration(
            hintText:customtextfieldhinttext ,
            hintStyle: TextStyle(color: customtextfieldhintcolor ?? Appcolors.appsecondarycolor ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color:textfieldbordercolor ?? Appcolors.whitecolor )
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: textfieldbordercolor ?? Appcolors.whitecolor),
              borderRadius: BorderRadius.all(Radius.circular(textfieldborderradius ?? 8.r))
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: textfieldbordercolor ?? Appcolors.whitecolor ),
              borderRadius: BorderRadius.all(Radius.circular(textfieldborderradius ?? 8.r))
            )
          ) ,
          obscureText:false ,
    );
  }
}