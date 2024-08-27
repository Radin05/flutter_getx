import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.bilangan.toString())),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.tambahSatu();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 146, 235, 214), // Ganti dengan warna yang diinginkan
                  ),
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    controller.kurangSatu();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 146, 235, 214), // Ganti dengan warna yang diinginkan
                  ),
                  child: Icon(Icons.minimize),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                controller.reset();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 146, 235, 214), // Ganti dengan warna yang diinginkan
              ),
              child: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
