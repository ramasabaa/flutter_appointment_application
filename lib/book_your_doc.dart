
import 'package:flutter/material.dart';
import 'package:flutter_appointment_application/core/routing/app_router.dart';
import 'package:flutter_appointment_application/core/routing/routes.dart';
import 'package:flutter_appointment_application/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BookYourDoc extends StatelessWidget {
  final AppRouter router;

  const BookYourDoc({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
designSize: const Size(375,812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'BYD',
        theme:  ThemeData(
          primaryColor:ColorManager.mainColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoaardingScreen,
        onGenerateRoute: AppRouter.generateRoute,
      ),

    );
  }
}
