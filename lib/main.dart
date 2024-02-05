import 'package:flutter/material.dart';
import 'package:flutter_appointment_application/book_your_doc.dart';
import 'package:flutter_appointment_application/core/routing/app_router.dart';

void main() {
  runApp(BookYourDoc(
    router: AppRouter(),
  ));
}
