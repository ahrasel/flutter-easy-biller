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
                  value: 0,
                ),
              ],
            ),
            const SizedBox(width: 8),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    radius: 20,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              _drawerItem('Home', Icons.home, 1, true),
              _drawerItem('Users', Icons.people, 101, false),
              _drawerItem('Products', Icons.inventory_outlined, 101, false),
              _drawerItem('Logout', Icons.home, 101, false),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(child: child),
          ],
        ),
      );

  ListTile _drawerItem(
          String text, IconData icon, int index, bool isSelected) =>
      ListTile(
        leading: Icon(icon),
        title: Text(text, style: Get.textTheme.subtitle1),
        onTap: () => controller.onChangeMoreAction(index),
        selected: isSelected,
        selectedTileColor: Colors.blue[100],
      );

  Row _actionWithText(String text, IconData icon) => Row(
        children: [
          Icon(icon, color: Colors.black87),
          const SizedBox(width: 10),
          Text(text),
        ],
      );
}
