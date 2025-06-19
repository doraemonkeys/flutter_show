// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import '../data/ui_items_data.dart';
import 'ui_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 主屏幕本质上就是一个UIListScreen，只是数据源是顶级的mainUIItems
    return UIListScreen(title: 'Flutter UI Gallery', items: mainUIItems);
  }
}
