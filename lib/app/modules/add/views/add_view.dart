import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_project/app/modules/home/controllers/home_controller.dart';

import '../controllers/add_controller.dart';

class AddView extends GetView<AddController> {
  const AddView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AddView'),
          centerTitle: true,
          // leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: Get.toNamed(Routes.ho),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              TextField(
                autocorrect: false,
                controller: controller.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Product Text",
                    hintText: "Input product name here..."),
                onEditingComplete: () =>
                    Get.find<HomeController>().add(controller.name.text),
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                  onPressed: () =>
                      Get.find<HomeController>().add(controller.name.text),
                  child: Text("Add Product"))
            ],
          ),
        ));
  }
}
