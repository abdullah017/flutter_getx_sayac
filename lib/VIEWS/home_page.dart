import 'package:examp_1/Controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViews extends StatelessWidget {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET_x EXAMPLE"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sayacı arttırmak için butona basın",
            ),
            Obx(
              () => Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "${controller.count.value}",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () => controller.count.value++,
              tooltip: 'Arttır',
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
