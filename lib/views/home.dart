import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/controllers/counter_controller.dart';
import 'package:getx_dependency_management/views/detail.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // # IF we use Get.put it means that the controller will
  // Initialized if you use it or Not. and isSingleton is true#

  // final countController = Get.put(CounterController());

  // # IF we use Get.lazyPut it means that the controller will
  // Initialized when we call the controller. #

  final countController = Get.lazyPut(() => CounterController());

  // # IF we use Get.create it means that the controller will
  // Initialized if you use it or Not. and isSingleton is false#

  // final countController = Get.create<CounterController>(() => CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Dependency management'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.to(const DetailScren()),
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      body: Center(
        child: Obx(
          () => Text('${Get.find<CounterController>().count.value}',
              style: const TextStyle(fontSize: 40)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().increment();
        },
        child: const Icon(Icons.add, size: 30),
      ),
    );
  }
}
