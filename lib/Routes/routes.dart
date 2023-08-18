import 'package:get/get.dart';
import 'package:taxi_app/Routes/routes_names.dart';
import 'package:taxi_app/Screens/SignUP/bindings.dart';
import 'package:taxi_app/Screens/SignUP/view.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(
      name: RoutesNames.signUpScreen,
      page: () => SignUpView(),
      binding: SignUpBindings(),
    ),

  ];
}