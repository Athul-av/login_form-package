<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A complete package for login. designed template anyone can modify

## Features

for login purpose. Can use validator , formkey and modify the ui

## Getting started

add the package in your flutter project and use 

## Usage



```dart
class Home extends StatelessWidget {
  Home({super.key});

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();
  Function onButtonPressed = () {};
  String? Function(String?)? validator1 = (value) {
    log('hi');
    return null;
  }; 
  String? Function(String?)? validator2 = (value) {
    log('hey');
    return null;
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: LoginForm(
              controller1: controller1,
              controller2: controller2,
              formkey: formkey,
              onButtonPressed: onButtonPressed,
              validator1: validator1,
              validator2: validator2)),
    );
  }
}
```

## Additional information


