import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/getx%20implemantations/counter_in_few_lines.dart';
import 'package:getx_demo/getx%20implemantations/dialog_and_snackbar.dart';
import 'package:getx_demo/getx%20implemantations/navigation_using_transition.dart';
import 'package:getx_demo/getx%20implemantations/using_controllers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Demo',
      theme: ThemeData(brightness: Brightness.dark),
      home: GetxControllerDemo(),
    );
  }
}
