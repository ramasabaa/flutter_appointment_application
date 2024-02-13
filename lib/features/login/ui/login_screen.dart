import 'package:flutter/material.dart';
import 'package:flutter_appointment_application/core/helpers/spacing.dart';
import 'package:flutter_appointment_application/core/theming/colors.dart';
import 'package:flutter_appointment_application/core/widget/app_text_button.dart';
import 'package:flutter_appointment_application/core/widget/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 50.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "welcome back",
                style: TextStyle(
                    color: ColorManager.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.sp),
              ),
              verticalSpace(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyle(
                    color: ColorManager.gray,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
              ),
              verticalSpace(36),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: 'Email'),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(isObscureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      verticalSpace(14),
                      const Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            'Forgot Password ?',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: ColorManager.mainColor),
                          )),
                      verticalSpace(40),
                      AppTextButton(
                          buttonText: 'Log in ',
                          textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                          onPressed: () {}),
                      verticalSpace(16),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'By logging, you agree to our',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: ColorManager.gray,
                                  fontSize: 13),
                            ),
                            TextSpan(
                              text: ' Terms & Conditions',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: ColorManager.darkBlue,
                                  fontSize: 13),
                            ),
                            TextSpan(
                                text: ' and',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: ColorManager.gray,
                                    fontSize: 13,
                                    height: 1.5)),
                            TextSpan(
                                text: ' Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: ColorManager.darkBlue,
                                    fontSize: 13)),
                          ],
                        ),
                      ),
                      verticalSpace(60),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an account?',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: ColorManager.darkBlue,
                                  fontSize: 13),
                            ),
                            TextSpan(

                              
                              text: ' Sign Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.mainColor,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
