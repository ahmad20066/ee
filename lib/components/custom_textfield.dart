// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final IconData? icon;
  final String labelText;
  final BorderRadiusGeometry? borderRadius;
  final Widget? suffixIcon;
  final String? hintText;
  final double? width;
  final onChanged;

  final bool isObscure;

  CustomTextField(
      {this.icon,
      required this.labelText,
      this.borderRadius,
      this.width,
      this.suffixIcon,
      this.hintText,
      this.onChanged,
      this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment(-0.8, 1),
          child: Text(
            labelText,
            style: TextStyle(
                fontSize: 15.sp,
                color: Colors.black38,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20.w, 5.h, 0, 0),
          height: 50.h,
          width: width,
          margin: EdgeInsets.fromLTRB(10, 5.h, 10, 0),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  blurRadius: 5,
                )
              ]),
          child: TextField(
            obscureText: isObscure,
            style: TextStyle(fontSize: 18.sp),
            cursorHeight: 20.h,
            onChanged: onChanged,
            decoration: InputDecoration(

                // floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.black38, fontSize: 16.sp),
                suffixIcon: suffixIcon,
                border: InputBorder.none,
                // labelText: labelText,
                //labelStyle: TextStyle(color: Color.fromRGBO(81, 92, 111, 0.5)),
                prefixIcon: icon == null ? null : Icon(icon)),
          ),
        ),
      ],
    );
  }
}
