import 'package:flutter/material.dart';
import 'package:responsive_1/views/home_view.dart';

void main() {
  runApp(const AdaptivApp());
}

class AdaptivApp extends StatelessWidget {
  const AdaptivApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
