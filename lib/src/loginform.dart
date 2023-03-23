import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  LoginForm(
      {super.key,
      required this.controller1,
      required this.controller2,
      required this.formkey,
      required this.onButtonPressed,
      required this.validator1,
      required this.validator2,
      this.containerWidth = 350,
      this.containerHeight = 300,
      this.containerColor = const Color.fromARGB(255, 184, 210, 208),
      this.textFieldLabel  = 'Enter name',
      this.textFieldLabel2  = 'Enter password',
      this.textColor1= Colors.white,
      this.textColor2 = Colors.white,
      this.cursorColor = Colors.white,
      this.textFieldColor1 = const Color.fromARGB(255, 39, 39, 39),
      this.textFieldColor2 = const Color.fromARGB(255, 39, 39, 39),
      this.textFieldIcon1 = Icons.person,
      this.textFieldIconSize1 = 20,
      this.textFieldIconColor1 = Colors.white,
      this.textFieldIcon2 = Icons.lock,
      this.textFieldIconColor2 = Colors.white,
      this.textFieldIconSize2 = 20,
      this.buttonColor = Colors.teal,
      this.buttonText = 'Log in',
      this.buttonTextColor = Colors.white,
      this.buttonTextSize = 15});

  TextEditingController controller1;
  TextEditingController controller2;
  Function onButtonPressed;
  GlobalKey formkey;
  String? Function(String?)? validator1;
  String? Function(String?)? validator2;
  double? containerWidth;
  double? containerHeight;
  Color? containerColor;
  String? textFieldLabel;
  String? textFieldLabel2;
  Color? textColor1 ;
  Color? textColor2; 
  Color? cursorColor;
  Color? textFieldColor1;
  Color? textFieldColor2;
  IconData? textFieldIcon1;
  double? textFieldIconSize1;
  Color? textFieldIconColor1;
  IconData? textFieldIcon2;
  double? textFieldIconSize2;
  Color? textFieldIconColor2;
  Color? buttonColor;
  String? buttonText;
  Color? buttonTextColor;
  double? buttonTextSize;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: containerHeight,
        width: containerWidth,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: containerColor),
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
                key: formkey,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: controller1,
                      cursorColor: cursorColor,
                      validator: validator1,
                      style: TextStyle(color: textColor1),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(25),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        labelText: textFieldLabel,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle: const TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 190, 190, 190)),
                        filled: true,
                        fillColor: textFieldColor1,
                        prefixIcon: Icon(
                          textFieldIcon1,
                          size: textFieldIconSize1,
                          color: textFieldIconColor1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: controller2,
                      cursorColor: cursorColor,
                      validator: validator2,
                      style: TextStyle(color: textColor2),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(25),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        labelText: textFieldLabel2,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle: const TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 190, 190, 190)),
                        filled: true,
                        fillColor: textFieldColor2,
                        prefixIcon: Icon(
                          textFieldIcon2,
                          size: textFieldIconSize2,
                          color: textFieldIconColor2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        onButtonPressed;
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonColor),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(15)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Text(
                        buttonText!,
                        style: TextStyle(
                            color: buttonTextColor,
                            fontSize: buttonTextSize,
                            fontWeight: FontWeight.bold),
                      ))
                ]))));
  }
}
