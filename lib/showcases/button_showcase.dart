// lib/showcases/buttons/button_showcase.dart

import 'package:flutter/material.dart';

class ButtonShowcase extends StatelessWidget {
  const ButtonShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const Text(
          'ElevatedButton',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          // 使用Wrap可以在空间不足时自动换行
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Enabled')),
            const ElevatedButton(onPressed: null, child: Text('Disabled')),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Icon'),
            ),
          ],
        ),
        const Divider(height: 32),

        const Text(
          'TextButton',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            TextButton(onPressed: () {}, child: const Text('Enabled')),
            const TextButton(onPressed: null, child: Text('Disabled')),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.info),
              label: const Text('Icon'),
            ),
          ],
        ),
        const Divider(height: 32),

        const Text(
          'OutlinedButton',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            OutlinedButton(onPressed: () {}, child: const Text('Enabled')),
            const OutlinedButton(onPressed: null, child: Text('Disabled')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.check),
              label: const Text('Icon'),
            ),
          ],
        ),
      ],
    );
  }
}
