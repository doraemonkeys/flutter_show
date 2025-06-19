// lib/showcases/cards/card_showcase.dart

import 'package:flutter/material.dart';

class CardShowcase extends StatelessWidget {
  const CardShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const Text(
          'Standard Card',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Card Title',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                const Text('This is a simple card with some content inside.'),
              ],
            ),
          ),
        ),
        const Divider(height: 32),
        const Text(
          'Card with Image',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Card(
          clipBehavior: Clip.antiAlias, // 裁切图片以匹配圆角
          child: Column(
            children: [
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                fit: BoxFit.cover,
                height: 150,
                width: double.infinity,
              ),
              ListTile(
                leading: const Icon(Icons.image_aspect_ratio),
                title: const Text('Image Card'),
                subtitle: Text(
                  'This card features an image at the top.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
