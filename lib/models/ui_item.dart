// lib/models/ui_item.dart

/*
这个模型是整个结构的核心。它定义了一个UI项应该包含哪些信息，并且巧妙地通过 targetWidget 和 subItems 来区分两种不同的点击行为。
*/

import 'package:flutter/material.dart';

class UIItem {
  final String title;
  final String description;
  final IconData icon;

  // 如果点击后直接展示一个Widget，则使用这个属性
  final Widget? targetWidget;

  // 如果点击后是展示一个子列表，则使用这个属性
  final List<UIItem>? subItems;

  UIItem({
    required this.title,
    required this.description,
    required this.icon,
    this.targetWidget,
    this.subItems,
  }) : assert(
         (targetWidget != null && subItems == null) || (targetWidget == null),
         '一个UI项不能同时拥有 targetWidget 和 subItems。',
       );
  // 如果有 subItems，则 targetWidget 必须为 null。
  // 如果 targetWidget 不为 null，则 subItems 必须为 null。
}
