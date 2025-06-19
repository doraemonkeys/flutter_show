// lib/widgets/ui_item_card.dart

import 'package:flutter/material.dart';
import '../models/ui_item.dart';
import '../screens/ui_detail_screen.dart';
import '../screens/ui_list_screen.dart';

class UIItemCard extends StatelessWidget {
  final UIItem item;

  const UIItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: () {
          // 核心导航逻辑
          if (item.subItems != null && item.subItems!.isNotEmpty) {
            // 如果有子列表，则导航到UIListScreen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    UIListScreen(title: item.title, items: item.subItems!),
              ),
            );
          } else if (item.targetWidget != null) {
            // 如果有目标Widget，则导航到UIDetailScreen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UIDetailScreen(
                  title: item.title,
                  child: item.targetWidget!,
                ),
              ),
            );
          } else {
            // 占位逻辑，比如当一个UI还没实现时
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('${item.title} 正在开发中...')));
          }
        },
        child: ListTile(
          leading: Icon(
            item.icon,
            size: 40,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            item.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(item.description),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        ),
      ),
    );
  }
}
