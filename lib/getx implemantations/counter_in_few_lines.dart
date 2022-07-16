import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleCounter extends StatelessWidget {
  SimpleCounter({Key? key}) : super(key: key);
  final arrays = ['nishad', 'jaseel', 'ajwad', 'harry', 'jones', 'larry'];
  var name = 'nishad'.obs;

  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: const Text("counter")),
      body: Center(
        child: Obx(() => Text("$name")),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text(
          'change',
          style: TextStyle(fontSize: 10),
        ),
        onPressed: () => name.value = arrays[Random().nextInt(arrays.length)],
      ));
}
