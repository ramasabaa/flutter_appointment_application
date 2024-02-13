import 'package:flutter/material.dart';
import 'package:flutter_appointment_application/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
        this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
          focusedBorder:focusedBorder ?? OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorManager.mainColor, width: 1.3),
              borderRadius: BorderRadius.circular(16)),
          enabledBorder: enabledBorder?? OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorManager.lighterGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16)),
          hintStyle: TextStyle(
              fontSize: 14.sp,
              color: ColorManager.lightGray,
              fontWeight: FontWeight.w400),
          hintText: hintText,
          suffixIcon: suffixIcon,
      fillColor:backgroundColor ?? ColorManager.moreLightGray,
      filled: true),
      obscureText: isObscureText ?? false,

      style: TextStyle(
          fontSize: 14.sp,
          color: ColorManager.darkBlue,
          fontWeight: FontWeight.w500),
    );
  }
}
