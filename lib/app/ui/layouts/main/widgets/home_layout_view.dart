import 'package:easy_biller/app/ui/layouts/main/home_layout.dart';
import 'package:flutter/material.dart';

class HomeLayoutView extends StatelessWidget {
  final Widget child;

  const HomeLayoutView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => HomeLayout(child: child);
}
