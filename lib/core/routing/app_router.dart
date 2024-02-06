import 'package:flutter/material.dart';
import 'package:flutter_appointment_application/core/routing/routes.dart';
import 'package:flutter_appointment_application/features/login/ui/login_screen.dart';
import 'package:flutter_appointment_application/features/on_borarding/on_boarding_sereen.dart';
class AppRouter{

   static Route generateRoute(RouteSettings settings){
     final arguments= settings.arguments;
     switch(settings.name)
        {
      case Routes.onBoaardingScreen:
        return MaterialPageRoute(builder: (_) => const onboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const loginScreen());
        default: return MaterialPageRoute(builder: (_) => Scaffold(
          body:Center(
            child: Text('No Route define for ${settings.name}'),
          )
        ));

    }

  }

 }