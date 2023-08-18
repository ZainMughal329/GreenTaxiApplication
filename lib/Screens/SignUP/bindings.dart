import 'package:get/get.dart';
import 'package:taxi_app/Screens/SignUP/controller.dart';

class SignUpBindings implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SignUpController>(() => SignUpController());
  }

}