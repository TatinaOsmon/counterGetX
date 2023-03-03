// ignore: file_names
// ignore: file_names
import 'package:counterbloc/counter_with_getX/counter_contreller.dart';
import 'package:counterbloc/counter_with_getX/secondPage_WithGetX.dart';
import 'package:flutter/material.dart';
// ignore: duplicate_import
import 'package:flutter/material.dart';
// ignore: duplicate_import
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterWithGetXPage extends StatelessWidget {
  CounterWithGetXPage({
    super.key,
  });

  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print('build iwtedi');
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterWithGetXPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() {
              return Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.push<int>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondWithGetxPage(),
                  ),
                );
              },
              child: const Text('Go to Second Page'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
