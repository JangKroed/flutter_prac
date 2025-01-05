import 'package:flutter/material.dart';
import 'package:flutter_practice_project/countController.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<CountController>(
                init: CountController(),
                builder: (_) => Text(
                    'Current Count: ${Get.find<CountController>().counter}'),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => Get.find<CountController>().increase(),
                    child: const Text('증가'),
                  ),
                  TextButton(
                    onPressed: () => Get.find<CountController>().decrease(),
                    child: const Text('감소'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
