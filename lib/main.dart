import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/getx%20implemantations/navigation_using_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Demo',
      theme: ThemeData(
        
      brightness: Brightness.dark
      ),
      home:const GetxNavigation(),
    
    );
  }
}



