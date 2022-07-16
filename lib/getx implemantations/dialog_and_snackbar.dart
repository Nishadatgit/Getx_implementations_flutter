import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxAlertSnackbar extends StatelessWidget {
  const GetxAlertSnackbar({Key? key}) : super(key: key);

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
                      Get.dialog(
                          Center(
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              height: 50,
                              width: 100,
                              child: const Text(
                                'This is dialog',
                                style: TextStyle(fontSize: 14),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          transitionCurve: Curves.bounceInOut);
                    },
                    child: const Text('Show Dialog')),
              ),
              Container(
                color: Colors.red,
                height: 40,
                width: 200,
                child: TextButton(
                    onPressed: () {
                      Get.snackbar(
                        'GetxSnackbar',
                        'Showed successfully',
                        duration: const Duration(seconds: 2),
                      );
                    },
                    child: const Text('Show snackbar')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
