import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_project/app/modules/home/views/item_view.dart';
import 'package:getx_project/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Product'),
        actions: [
          IconButton(
              onPressed: () => Get.toNamed(Routes.ADD), icon: Icon(Icons.add))
        ],
        centerTitle: true,
      ),
      body: Obx(
        () => controller.products.isEmpty
            ? Center(child: Text("Data not found"))
            : ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  final data = controller.products[index];
                  return ItemView(data);
                },
              ),
      ),
    );
  }
}
