import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:taxi_app/Screens/SignUP/state.dart';

class SignUpController extends GetxController{
final state = SignUpState();
final countryPicker = const FlCountryCodePicker();


void changeCountryCode ( BuildContext context) async{
  final code = await countryPicker.showPicker(context: context);
  if(code !=null){
    state.name.value=code!.name.toString();
    state.code.value=code!.code.toString();
    state.dialCode.value=code!.dialCode.toString();
  }
}



}