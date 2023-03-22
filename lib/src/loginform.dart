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
      this.containerWidth,
      this.containerHeight,
      this.containerColor,
      this.textFieldLabel,
      this.textFieldLabel2,
      this.textColor1,
      this.textColor2,
      this.cursorColor,
      this.textFieldColor1,
      this.textFieldColor2,
      this.textFieldIcon1,
      this.textFieldIconSize1,
      this.textFieldIconColor1,
      this.textFieldIcon2,
      this.textFieldIconColor2,
      this.textFieldIconSize2,
      this.buttonColor,
      this.buttonText,
      this.buttonTextColor,
      this.buttonTextSize});

  TextEditingController controller1;
  TextEditingController controller2;
  Function onButtonPressed;
  GlobalKey formkey;
  String? Function(String?)? validator1;
  String? Function(String?)? validator2;
  double? containerWidth = 350;
  double? containerHeight = 300;
  Color? containerColor = const Color.fromARGB(255, 184, 210, 208);
  String? textFieldLabel = 'Enter name';
  String? textFieldLabel2 = 'Enter password';
  Color? textColor1 = Colors.white;
  Color? textColor2 = Colors.white;
  Color? cursorColor = Colors.white;
  Color? textFieldColor1 = const Color.fromARGB(255, 39, 39, 39);
  Color? textFieldColor2 = const Color.fromARGB(255, 39, 39, 39);
  IconData? textFieldIcon1 = Icons.person;
  double? textFieldIconSize1 = 20;
  Color? textFieldIconColor1 = Colors.white;
  IconData? textFieldIcon2 = Icons.lock;
  double? textFieldIconSize2 = 20;
  Color? textFieldIconColor2 = Colors.white;
  Color? buttonColor = Colors.teal;
  String? buttonText = 'Log in';
  Color? buttonTextColor = Colors.white;
  double? buttonTextSize = 15;
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
