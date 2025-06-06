import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
/* CENTER SCREEN IMPORT */
import 'package:untitled/center.screen.dart';
/* PROVIDER IMPORT */
import 'package:untitled/provider/cart.provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CenterScreen(),
    );
  }
}
