import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home1_controller.dart';

class Home1View extends GetView<Home1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Home1View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
