import 'package:flutter/material.dart';

import '../main_layout.dart';

class MainLayoutView extends StatelessWidget {
  final Widget child;

  const MainLayoutView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => MainLayout(child: child);
}
