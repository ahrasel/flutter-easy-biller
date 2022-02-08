import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/main_controller.dart';

class MainLayout extends GetView<MainController> {
  final Widget child;
  const MainLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Easy Biller'),
          actions: [
            IconButton(
              icon: const Icon(Icons.light_mode),
              onPressed: () {},
            ),
            IconButton(
              icon: const Text('EN'),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            Expanded(child: child),
          ],
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.inventory_outlined),
                  label: 'Invoices',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin),
                  label: 'Account',
                ),
              ],
              currentIndex: controller.currentIndex.value,
              onTap: (index) => controller.currentIndex.value = index,
            )),
      );
}
