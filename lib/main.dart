import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_app/Routes/routes.dart';
import 'package:taxi_app/Routes/routes_names.dart';
import 'package:taxi_app/Screens/SignUP/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(

      initialRoute: RoutesNames.signUpScreen,
      getPages: AppPages.routes,


    );
  }
}
