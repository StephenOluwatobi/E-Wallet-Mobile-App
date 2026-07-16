import 'package:flutter/material.dart';

class ActionItem extends StatelessWidget {
  final String imageIconPath;
  final String? text;
  final Color? color;
  const ActionItem({
    super.key,
    required this.imageIconPath,
    this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.deepPurple.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
          ),

          child: Image.asset(imageIconPath, width: 20, height: 20),
        ),
        const SizedBox(height: 8),
        Text(
          text!,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
