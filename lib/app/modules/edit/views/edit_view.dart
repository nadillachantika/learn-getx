import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../controllers/edit_controller.dart';

class EditView extends GetView<EditController> {
  EditView({Key? key}) : super(key: key);
  final homeC = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final data = homeC.findById(Get.arguments);
    controller.name.text = data.name!;
    return Scaffold(
        appBar: AppBar(
          title: const Text('EditView'),
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
                    homeC.edit(Get.arguments, controller.name.text),
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                  onPressed: () =>
                      homeC.edit(Get.arguments, controller.name.text),
                  child: Text("Edit Product"))
            ],
          ),
        ));
  }
}
