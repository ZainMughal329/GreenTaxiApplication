import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_app/Screens/SignUP/controller.dart';

class SignUpView extends GetView<SignUpController> {
  SignUpView({Key? key}) : super(key: key);

  final countryPicker = const FlCountryCodePicker();
  final countryCode =
      CountryCode(name: 'Pakistan', code: "PK", dialCode: "+92");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: double.infinity,
              // color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 0.1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: (){
                        controller.changeCountryCode(context);
                      },
                      child: Obx((){
                        return Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Container(
                                  child: CountryCode(
                                    name: controller.state.name.value,
                                    code: controller.state.code.value,
                                    dialCode: controller.state.dialCode.value,
                                  ).flagImage(),
                                ),
                              ),
                              Text(controller.state.dialCode.value.toString()),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: 1,
                    color: Colors.black,
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
