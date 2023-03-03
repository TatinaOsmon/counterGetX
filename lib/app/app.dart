// ignore: unused_import
import 'package:counterbloc/counter/counter.dart';
import 'package:counterbloc/counter_with_getX/counter_with_GetX.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterWithGetXPage(),
    );
  }
}
