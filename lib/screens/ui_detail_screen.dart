// lib/screens/ui_detail_screen.dart

import 'package:flutter/material.dart';

class UIDetailScreen extends StatelessWidget {
  final String title;
  final Widget child;

  const UIDetailScreen({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: child, // 直接将传入的Widget作为body
    );
  }
}
