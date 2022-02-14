import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/main_controller.dart';

class HomeLayout extends GetView<MainController> {
  final Widget child;
  const HomeLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(controller.appbarTitle.value),
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
            PopupMenuButton(
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
                radius: 20,
              ),
              onSelected: (value) =>
                  controller.onChangeMoreAction(value as int),
              itemBuilder: (_) => [
                PopupMenuItem<int>(
                  child: _actionWithText('Profile', Icons.person),
                  value: 5,
                ),
                PopupMenuItem<int>(
                  child: _actionWithText('Change Password', Icons.lock),
                  value: 10,
                ),
                PopupMenuItem<int>(
                  child: _actionWithText('Settings', Icons.settings),
                  value: 15,
                ),
                const PopupMenuItem<int>(
                  child: Divider(),
                  value: 20,
                ),
                PopupMenuItem<int>(
                  child: _actionWithText('Logout', Icons.logout),
                  value: 25,
                ),
              ],
            ),
            const SizedBox(width: 8),
          ],
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            Expanded(child: child),
          ],
        ),
        // bottomNavigationBar: Obx(
        //   () => BottomNavigationBar(
        //     items: const [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.dashboard),
        //         label: 'Home',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.inventory_outlined),
        //         label: 'Invoices',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.person_pin),
        //         label: 'Account',
        //       ),
        //     ],
        //     currentIndex: controller.currentIndex.value,
        //     onTap: (index) => controller.currentIndex.value = index,
        //   ),
        // ),
      );

  Row _actionWithText(String text, IconData icon) => Row(
        children: [
          Icon(icon, color: Colors.black87),
          const SizedBox(width: 10),
          Text(text),
        ],
      );
}
