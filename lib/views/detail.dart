import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/controllers/counter_controller.dart';

class DetailScren extends StatelessWidget {
  const DetailScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Dependency management'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('${Get.find<CounterController>().count}',
            style: const TextStyle(fontSize: 40)),
      ),
    );
  }
}
