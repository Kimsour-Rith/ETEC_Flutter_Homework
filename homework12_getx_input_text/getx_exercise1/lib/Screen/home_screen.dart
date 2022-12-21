import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_exercise1/Screen/second_screen.dart';
import 'package:getx_exercise1/controller.dart';
import '../Model/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController productName = TextEditingController();
  TextEditingController productQyt = TextEditingController();
  TextEditingController productPrice = TextEditingController();
  TextEditingController totalPrice = TextEditingController();
  ProductController productController = Get.put(ProductController());
  final _formKey = GlobalKey<FormState>();

  void clearText() {
    productName.clear();
    productQyt.clear();
    productPrice.clear();
    totalPrice.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(Icons.bedtime),
          onTap: () {},
        ),
        title: const Text("Hello Getx"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: productName,
                    decoration: const InputDecoration(
                      label: Text("Product Name"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: productQyt,
                    decoration: const InputDecoration(
                      label: Text("Product Quantity"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        double qyt = double.parse(productQyt.text);
                        double price = double.parse(value.toString());
                        totalPrice.text = (price * qyt).toString();
                      });
                    },
                    controller: productPrice,
                    decoration: const InputDecoration(
                      hintText: 'Product Price',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: totalPrice,
                    decoration: const InputDecoration(
                      label: Text("Product Name"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.to(() => const SecondScreen());
                      clearText();
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 40)),
                    child: const Text("Next Page")),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        productController.addProductCard(Product(
                          code: Random().nextInt(200),
                          name: productName.text,
                          price: double.parse(productPrice.text),
                          qyt: double.parse(productQyt.text),
                          total: double.parse(totalPrice.text),
                        ));
                        clearText();
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 40)),
                      child: const Text("Save"),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          clearText();
                        },
                        style: ElevatedButton.styleFrom(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 40)),
                        child: const Text("Clear")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
