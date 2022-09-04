import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex_state/my_controller.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var name = "mohamed".obs;
  var age = "23".obs;
  MyController myController = Get.put(MyController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Mohamed Elsayed",
                  "Hello World",
                );
              },
              child: const Text("Show SnakBar"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Mohamed Elsayed", middleText: "Hello World");
              },
              child: const Text("Show Dialog"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Wrap(
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(Icons.wb_sunny_outlined),
                        title: const Text("Light Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.wb_sunny),
                        title: const Text("Dark Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                );
              },
              child: const Text("Show Bottom Sheet"),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Text(
                "Counter Value is ${myController.counter}",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                myController.increment();
              },
              child: const Text("Increment"),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Text("My Name is ${name.value}"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                name.value = name.value.toUpperCase();
              },
              child: const Text("Upper"),
            ),
          ],
        ),
      ),
    );
  }
}
