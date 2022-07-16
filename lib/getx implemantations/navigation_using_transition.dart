import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/Screens/screen_one.dart';
import 'package:getx_demo/Screens/screen_three.dart';
import 'package:getx_demo/Screens/screen_two.dart';

class GetxNavigation extends StatelessWidget {
  const GetxNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetxNavigation'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.green,
                height: 40,
                width: 200,
                child: TextButton(
                    onPressed: () {
                      Get.to(() => const ScreenOne(),
                          transition: Transition.fade,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Text('Goto screen 1')),
              ),
              Container(
                color: Colors.red,
                height: 40,
                width: 200,
                child: TextButton(
                    onPressed: () {
                      Get.to(() => const ScreenTwo(),
                          transition: Transition.zoom,
                          duration: const Duration(milliseconds: 500));
                    },
                    child: const Text('Goto screen 2')),
              ),
              Container(
                color: Colors.purpleAccent,
                height: 40,
                width: 200,
                child: TextButton(
                    onPressed: () {
                      Get.to(() => const ScreenThree(),
                          transition: Transition.downToUp,
                          duration: const Duration(milliseconds: 500));
                    },
                    child: const Text('Goto screen 3')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
