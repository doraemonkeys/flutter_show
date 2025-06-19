// lib/screens/ui_list_screen.dart

import 'package:flutter/material.dart';
import '../models/ui_item.dart';
import '../widgets/ui_item_card.dart';

class UIListScreen extends StatelessWidget {
  final String title;
  final List<UIItem> items;

  const UIListScreen({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return UIItemCard(item: items[index]);
        },
      ),
    );
  }
}
