import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_exercise1/controller.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final ProductController productController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: ListView.builder(
        itemCount: productController.products.length,
        itemBuilder: (context, index) {
          var pro = productController.products[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(pro.code.toString()),
            ),
            title: Text(
              pro.name,
              style: const TextStyle(
                fontSize: 25
              ),
            ),
            subtitle: Text(pro.total.toString()),
          );
        },
      ),
    );
  }
}
