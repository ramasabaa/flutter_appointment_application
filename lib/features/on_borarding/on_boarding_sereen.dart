import 'package:flutter/material.dart';
import 'package:flutter_appointment_application/core/helpers/extension.dart';
import 'package:flutter_appointment_application/core/routing/routes.dart';
import 'package:flutter_appointment_application/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class onboardingScreen extends StatelessWidget {
  const onboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
                child: Padding(
          padding: EdgeInsets.only(top: 100.h, bottom: 30.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/svgs/main_logo.svg'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Book Your Doc ',
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Stack(
                children: [
                  Container(
                    child: SvgPicture.asset('assets/svgs/onboarding_logo.svg',
                        fit: BoxFit.cover),
                    height: 450.h,
                    width: 450.h,
                  ),
                  Container(
                    child: Image.asset('assets/images/onboarding_doctor.png'),
                    foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.white.withOpacity(0.0),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: const [0.14, 0.4]),
                    ),
                  ),
                  Positioned(
                    child: Text(
                      'Best Doctor \n Appointment App',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          height: 1.2,
                          color: ColorManager.mainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    bottom: 35,
                    left: 0,
                    right: 0,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    Text(
                      'Schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.normal,
                        color: ColorManager.gray,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                        backgroundColor:
                            MaterialStateProperty.all(ColorManager.mainColor),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        minimumSize: MaterialStateProperty.all(
                           const  Size(double.infinity, 52))
                    ),
          
                    onPressed: () {context.pushNamed(Routes.loginScreen); },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
              )
            ],
          ),
                ),
              ),
        ));
  }
}
