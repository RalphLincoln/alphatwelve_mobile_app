import 'package:flutter/material.dart';

class MainBodyComponent extends StatelessWidget {
  const MainBodyComponent({
    super.key,
    this.sKey,
    this.drawer,
    this.safeTop = true,
    required this.body,
  });

  final Key? sKey;
  final Widget body;
  final bool safeTop;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sKey,
      body: SafeArea(
        top: safeTop,
        child: body,
      ),
      drawer: drawer,
    );
  }
}
