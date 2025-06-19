// lib/data/ui_items_data.dart

import 'package:flutter/material.dart';
import '../models/ui_item.dart';
import '../showcases/button_showcase.dart';
import '../showcases/cards/card_showcase.dart';

// 这是整个App的数据源
// 未来添加任何新UI，只需要修改这个文件
final List<UIItem> mainUIItems = [
  UIItem(
    title: '按钮 (Buttons)',
    description: '展示各种不同类型的按钮。',
    icon: Icons.touch_app,
    // 这个UI项包含一个子列表
    subItems: [
      UIItem(
        title: '所有按钮示例',
        description: 'Elevated, Text, Outlined...',
        icon: Icons.smart_button,
        // 点击后直接展示一个Widget
        targetWidget: const ButtonShowcase(),
      ),
      // 你可以在这里添加更多按钮相关的子项，比如
      // UIItem(title: 'FAB', description: 'Floating Action Button', icon: Icons.add, targetWidget: const FABShowcase()),
    ],
  ),
  UIItem(
    title: '卡片 (Cards)',
    description: '展示Material Design卡片样式。',
    icon: Icons.credit_card,
    // 这个UI项点击后直接展示一个Widget
    targetWidget: const CardShowcase(),
  ),
  UIItem(
    title: '对话框 (Dialogs)',
    description: '各种提示、确认对话框。',
    icon: Icons.chat_bubble_outline,
    // 这是一个占位符，你可以创建自己的Showcase
    // targetWidget: const DialogShowcase(),
  ),
  UIItem(
    title: '输入框 (Inputs)',
    description: '文本框、表单等。',
    icon: Icons.edit_note,
    // 占位符
  ),
];
